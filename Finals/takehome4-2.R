library(JGL)
library(gRbase)
library(Rgraphviz)
library(ggm)
library(Matrix)
library(MASS)
library(huge)
library(matrixcalc)
library(RBGL)
library(qpgraph)
library(clusterGeneration)
library(glasso)
library(compiler)
library(stats)
library(SGL)
library(lpSolve)
library(igraph)
library(RANN)


#
# Set up problem: maximize
# x1 + 9 x2 + x3 subject to
# x1 + 2 x2 + 3 x3 <= 9
# 3 x1 + 2 x2 + 2 x3 <= 15
#
(f.obj <- matrix(c(1, 9, 1),nrow=1))
(f.con <- matrix (c(1, 2, 3, 3, 2, 2), nrow=2, byrow=TRUE))
(f.dir <- c("<=", "<="))
(f.rhs <- matrix(c(9, 15),nrow=2))
#
# Now run.
#
lp ("max", f.obj, f.con, f.dir, f.rhs)

#the authors reccommend making a matrix symmetric by taking the minimum of the 2 elements
makeSymmetricMin <- function(omegahat1){
(p = dim(omegahat1)[1])
(newomega = omegahat1)
(newomega[] = 0)
(diag(newomega)=diag(omegahat1))
for(i in 1:(p-1)){
    for(j in (i+1):p){
        temp1 = omegahat1[i,j]
        temp2 = omegahat1[j,i]
        newomega[i,j] = min(temp1,temp2)
        newomega[j,i] = newomega[i,j]
    }
}
return(newomega)
}

medgeset <- function(A){
##A = test4$adjMat
##A = adjacencyMatrix
(p = length(A[,1]))
(E = matrix(0,0,2))
for(i in 2:p){
    (zero = which(A[i,1:i]==0))
    if(length(zero)>0){
        (flintrack = cbind(rep(i,length(zero)),zero))
        (E = rbind(E,flintrack))}}
return(E)}

chain <- function(p){
Sigma1 <- diag(p)
s <- c(0, rep(NA,p-1))
for (i in 2:p) s[i] <- s[i-1] + runif(1,0.5,1)
for (i in 1:(p-1)) {
   for (j in (i+1):p) {
   Sigma1[i,j] <- exp(-abs(s[i]-s[j])/2)
   }
}
Sigma1 <- Sigma1 + t(Sigma1) - diag(diag(Sigma1)) 
Omega1 <- solve(Sigma1)
return(list(Omega = Omega1,Sigma = Sigma1))}

nearestneighbor <- function(p){
x <- runif(p,0,1)
y <- runif(p,0,1)
points <- rbind(x,y)
dist <- matrix(rep(0,p*p),p,p)
for (i in 1:p-1){
   for (j in (i+1):p) {
       dist[i,j] <- sqrt(sum(abs(points[,i]-points[,j])^2))
   }
}
dist <- dist + t(dist) - diag(diag(dist))
nearest.neighbors <- t(apply(dist,1,order)[2:3, ])

Omega2 <- matrix(rep(0,p*p),p,p)
for (i in 1:p) {
    Omega2[i, nearest.neighbors[i,]] <- dist[i, nearest.neighbors[i, ]]
    Omega2[nearest.neighbors[i,], i] <- Omega2[i, nearest.neighbors[i,]]
}
Omega2 <- Omega2 + diag(p)
return(Omega2)
}

scalefree <- function(p){ 
OMEGA = 0
# Here I generate the graph of scale-free network
# thats created by that barabasi algorithm

c <- rep(1,p)
c[c(p-4,p-3,p-2,p-1)] <- 2
c[p] <- 3

sf.graph <- barabasi.game(p,power=1,out.seq=c,directed=FALSE)

# Then I get a proper adjacency matrix out of it
sf.adj <- get.adjacency(sf.graph)
sf.adj <- ifelse(as.matrix(sf.adj)==1,1,0)
diag(sf.adj) <- 1

# Here I put random values in place of '1' in the matrix
m <- sf.adj[sf.adj==1]
sf.adj[sf.adj==1] <- runif(length(m),1,2)

# Here I symmetrize the matrix
sf.adj <- sf.adj + t(sf.adj)
diag(sf.adj) <- 1

# That your OMEGA
OMEGA <- sf.adj

#Here is where you try to make it positive definite
is.positive.definite(OMEGA)

d <- max(eigen(OMEGA)$value)
while(min(eigen(OMEGA)$value) <= 0){
    OMEGA <- OMEGA + diag(d,nrow(OMEGA))
d <- max(eigen(OMEGA)$value)}


#Thats the SIGMA, also checking whether its pos def and symmetric, to be sure
SIGMA <- chol2inv(OMEGA)
return(list(omega=OMEGA,sigma = SIGMA))}

falsepos <- function(adj1hat,adj1){
    return((sum((upper.tri(adj1hat,diag=FALSE)*adj1hat -upper.tri(adj1,diag=FALSE)*adj1)>0))/(sum(upper.tri(adj1,diag=FALSE)*adj1==0)-(1/2)*(p)*(p+1)))}
falseneg <- function(adjmatrixhat,adjmatrix){
    return(sum((upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))}

frobnormloss <- function(omegahat,Omega1){
    out = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2)
    return(out)
}

scalefree2 <- function(p){
Sigma.sf = matrix(0,p,p)
Sigma.sf.2 = matrix(0,p,p)
while(is.positive.definite(Sigma.sf)==FALSE&is.positive.definite(Sigma.sf.2)==FALSE){
(graph.obj = barabasi.game(n=p, directed=F))
(adj.obj = get.adjacency(graph.obj))
(Omega.sf = as.matrix(adj.obj))

(Omega.sf[Omega.sf == 1] = runif(length(Omega.sf[Omega.sf==1]),0.5,1))
(Omega.sf = Omega.sf + t(Omega.sf))
(diag(Omega.sf) = 5)

(Omega.sf.2 = Omega.sf) #the second graph

#use rho = 1/4 to generate heterogeneity
tmp.Omega.mat = Omega.sf
diag(tmp.Omega.mat) = 0
M = sum(as.logical(tmp.Omega.mat))/2
hetero.size = M/4

not.zero = which(Omega.sf == 0, arr.ind=T)

ind.1 = sample(1:length(not.zero), hetero.size)
ind.2 = sample(1:length(not.zero), hetero.size)


Omega.sf[not.zero[ind.1]] = runif(hetero.size,0.5,1)
Omega.sf.2[not.zero[ind.2]] = runif(hetero.size,0.5,1)
Sigma.sf = chol2inv(Omega.sf)
Sigma.sf.2 = chol2inv(Omega.sf.2)
diag(Sigma.sf) = 1 #standardized
is.positive.definite(Sigma.sf)
diag(Omega.sf) = diag(chol2inv(Sigma.sf))
diag(Sigma.sf.2) = 1 #standardized
is.positive.definite(Sigma.sf.2)
diag(Omega.sf.2) = diag(chol2inv(Sigma.sf.2))
}
return((list(omega1=chol2inv(Sigma.sf),sigma1 = Sigma.sf,omega2=chol2inv(Sigma.sf.2),sigma2 = Sigma.sf.2)))
}

nearestneighbor2 <- function(p){
Sigma.nn = matrix(0,p,p)
Sigma.nn.2 = matrix(0,p,p)
while(is.positive.definite(Sigma.nn)==FALSE&is.positive.definite(Sigma.nn.2)==FALSE)
{
s.1 = runif(p)
s.2 = runif(p)
s = cbind(s.1,s.2)
nn.ind = nn2(s,k=2)$nn.idx

Omega.nn =  matrix(rep(0,p^2),nrow=p,ncol=p)
for(i in 1:p){
  Omega.nn[nn.ind[i,1],nn.ind[i,2]] = runif(1,0.5,1)
}

Omega.nn = Omega.nn + t(Omega.nn)
diag(Omega.nn) = 5

Omega.nn.2 = Omega.nn #the second graph

#use rho = 1/4 to generate heterogeneity
tmp.Omega.mat = Omega.nn
diag(tmp.Omega.mat) = 0
M = sum(as.logical(tmp.Omega.mat))/2
hetero.size = M/4

not.zero = which(Omega.nn == 0, arr.ind=T)

ind.1 = sample(1:length(not.zero), hetero.size)
ind.2 = sample(1:length(not.zero), hetero.size)


Omega.nn[not.zero[ind.1]] = runif(hetero.size,0.5,1)
Omega.nn.2[not.zero[ind.2]] = runif(hetero.size,0.5,1)

Sigma.nn = chol2inv(Omega.nn)
diag(Sigma.nn) = 1 #standardized
is.positive.definite(Sigma.nn)
diag(Omega.nn) = diag(chol2inv(Sigma.nn))

R.nn = chol(Sigma.nn)

Sigma.nn.2 = chol2inv(Omega.nn.2)
diag(Sigma.nn.2) = 1 #standardized
is.positive.definite(Sigma.nn.2)
diag(Omega.nn.2) = diag(chol2inv(Sigma.nn.2))
}
return((list(omega1=chol2inv(Sigma.nn),sigma1 = Sigma.nn,omega2=chol2inv(Sigma.nn.2),sigma2 = Sigma.nn.2)))
}

chain2 <- function(p){
Sigma.c = matrix(0,p,p)
Sigma.c.2 = matrix(0,p,p)
while(is.positive.definite(Sigma.c)==FALSE&is.positive.definite(Sigma.c.2)==FALSE)
{
Omega.c = matrix(rep(0,p^2),nrow=p,ncol=p)
for(i in 1:(p-1)){
  Omega.c[i,i+1] = runif(1,0.5,1)
  Omega.c[i+1,i] = runif(1,0.5,1)
}
Omega.c = Omega.c + t(Omega.c)
diag(Omega.c) = 5 #to ensure invertibility

Omega.c.2 = Omega.c #the second graph

#use rho = 1/4 to generate heterogeneity
tmp.Omega.mat = Omega.c
diag(tmp.Omega.mat) = 0
M = sum(as.logical(tmp.Omega.mat))/2
hetero.size = M/4

not.zero = which(Omega.c == 0, arr.ind=T)

ind.1 = sample(1:length(not.zero), hetero.size)
ind.2 = sample(1:length(not.zero), hetero.size)


Omega.c[not.zero[ind.1]] = runif(hetero.size,0.5,1)
Omega.c.2[not.zero[ind.2]] = runif(hetero.size,0.5,1)

Sigma.c = chol2inv(Omega.c)
diag(Sigma.c) = 1 #standardized
is.positive.definite(Sigma.c)
diag(Omega.c) = diag(chol2inv(Sigma.c))

Sigma.c.2 = chol2inv(Omega.c.2)
diag(Sigma.c.2) = 1 #standardized
is.positive.definite(Sigma.c.2)
diag(Omega.c.2) = diag(chol2inv(Sigma.c.2))
}
return((list(omega1=chol2inv(Sigma.c),sigma1 = Sigma.c,omega2=chol2inv(Sigma.c.2),sigma2 = Sigma.c.2)))
}

makeA <- function(S1,S2,p){
(zeros = matrix(0,nrow=p,ncol=p))
(Arow1 = cbind(-2*diag(p),zeros,diag(p),zeros,zeros))
(Arow2 = cbind(zeros,zeros,-diag(p),zeros,zeros))
(Arow3 = cbind(zeros,-2*diag(p),zeros,diag(p),zeros))
(Arow4 = cbind(zeros,zeros,zeros,-diag(p),zeros))
(Arow5 = cbind(-S1,zeros,S1,zeros,zeros))
(Arow6 = cbind(S1,zeros,-S1,zeros,zeros))
(Arow7 = cbind(zeros,-S2,zeros,S2,zeros))
(Arow8 = cbind(zeros,S2,zeros,-S2,zeros))
(Arow9 = cbind(diag(p),-diag(p),-diag(p),diag(p),-diag(p)))
(Arow10 = cbind(diag(p),-diag(p),-diag(p),diag(p),diag(p)))
(A = rbind(Arow1,Arow2,Arow3,Arow4,Arow5,Arow6,Arow7,Arow8,Arow9,Arow10))
return(A)}

makeb <- function(p,i,t1,t2){
(ei = as.matrix(diag(p)[,i]))
(ones = matrix(1,nrow=p,ncol=1))
(b = rbind(0*ones,0*ones,0*ones,0*ones,t1+ei,t1-ei,t2+ei,t2-ei,0*ones,0*ones))
return(b)}

chainestimate <- function(p,n,t1,t2){
Chain = chain2(p)
Sigma = round(Chain$sigma1,10)
Omega = round(Chain$omega1,10)
mu = rep(0,p)
Y1 = mvrnorm(n, mu, Sigma, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S1 = (1/n)*t(Y1)%*%Y1
Sigma2 = round(Chain$sigma2,10)
Omega2 = round(Chain$omega2,10)
Y2 = mvrnorm(n, mu, Sigma2, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S2 = (1/n)*t(Y2)%*%Y2
A = makeA(S1,S2,p)
c1 = matrix(1,ncol = 1,nrow = p)
c2 = matrix(1,ncol = 1,nrow = p)
c3 = matrix(0,ncol = 1,nrow = p)
c4 = matrix(0,ncol = 1,nrow = p)
c5 = matrix(1,ncol = 1,nrow = p)
(c = rbind(c1,c2,c3,c4,c5))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2))
    linearprog = lp("min", t(c), A, f.dir, b)
    x = linearprog$solution
    u1 = x[1:p]
    u2 = x[(p+1):(2*p)]
    b1pu1 = x[(2*p+1):(3*p)]
    b2pu2 = x[(3*p+1):(4*p)]
    omegahat1[,i] = b1pu1-u1
    omegahat2[,i] = b2pu2-u2
}
omegahat1 =  makeSymmetricMin(omegahat1)
omegahat2 =  makeSymmetricMin(omegahat2)
return(list(Omega1 = Omega,Omega2 = Omega2,omegahat1 = omegahat1, omegahat2 = omegahat2,S1 = S1, S2= S2))
}

nearnbrestimate <- function(p,n,t1,t2){
nearest = nearestneighbor2(p)
Sigma = round(nearest$sigma1,10)
Omega = round(nearest$omega1,10)
mu = rep(0,p)
Y1 = mvrnorm(n, mu, Sigma, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S1 = (1/n)*t(Y1)%*%Y1
Sigma2 = round(nearest$sigma2,10)
Omega2 = round(nearest$omega2,10)
Y2 = mvrnorm(n, mu, Sigma2, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S2 = (1/n)*t(Y2)%*%Y2
A = makeA(S1,S2,p)
c1 = matrix(1,ncol = 1,nrow = p)
c2 = matrix(1,ncol = 1,nrow = p)
c3 = matrix(0,ncol = 1,nrow = p)
c4 = matrix(0,ncol = 1,nrow = p)
c5 = matrix(1,ncol = 1,nrow = p)
(c = rbind(c1,c2,c3,c4,c5))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2))
    linearprog = lp("min", t(c), A, f.dir, b)
    x = linearprog$solution
    u1 = x[1:p]
    u2 = x[(p+1):(2*p)]
    b1pu1 = x[(2*p+1):(3*p)]
    b2pu2 = x[(3*p+1):(4*p)]
    omegahat1[,i] = b1pu1-u1
    omegahat2[,i] = b2pu2-u2
}
omegahat1 =  makeSymmetricMin(omegahat1)
omegahat2 =  makeSymmetricMin(omegahat2)
return(list(Omega1 = Omega,Omega2 = Omega2,omegahat1 = omegahat1, omegahat2 = omegahat2,S1 = S1, S2= S2))
}

scalestimate <- function(p,n,t1,t2){
Scale = scalefree2(p)
Sigma = round(Scale$sigma1,10)
Omega = round(Scale$omega1,10)
mu = rep(0,p)
Y1 = mvrnorm(n, mu, Sigma, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S1 = (1/n)*t(Y1)%*%Y1
Sigma2 = round(Scale$sigma2,10)
Omega2 = round(Scale$omega2,10)
Y2 = mvrnorm(n, mu, Sigma2, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
S2 = (1/n)*t(Y2)%*%Y2
A = makeA(S1,S2,p)
c1 = matrix(1,ncol = 1,nrow = p)
c2 = matrix(1,ncol = 1,nrow = p)
c3 = matrix(0,ncol = 1,nrow = p)
c4 = matrix(0,ncol = 1,nrow = p)
c5 = matrix(1,ncol = 1,nrow = p)
(c = rbind(c1,c2,c3,c4,c5))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2))
    linearprog = lp("min", t(c), A, f.dir, b)
    x = linearprog$solution
    u1 = x[1:p]
    u2 = x[(p+1):(2*p)]
    b1pu1 = x[(2*p+1):(3*p)]
    b2pu2 = x[(3*p+1):(4*p)]
    omegahat1[,i] = b1pu1-u1
    omegahat2[,i] = b2pu2-u2
}
omegahat1 =  makeSymmetricMin(omegahat1)
omegahat2 =  makeSymmetricMin(omegahat2)
return(list(Omega1 = Omega,Omega2 = Omega2,omegahat1 = omegahat1, omegahat2 = omegahat2,S1 = S1, S2= S2))
}

set.seed(12345)


#find optimal t_k. for chain 0.1 seems good                                    
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
Chain = chainestimate(p,n,t1,t1)
(frob[k] = mean(frobnormloss(Chain$omegahat1,Chain$Omega1),frobnormloss(Chain$omegahat2,Chain$Omega2)))
(Adj1 = abs(Chain$Omega1)>10^(-3))
(Adj2 = abs(Chain$Omega2)>10^(-3))
(Adjhat1 = abs(Chain$omegahat1)>10^(-3))
(Adjhat2 = abs(Chain$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

                                        #replicates.
frob = 0
fp = 0
fn = 0
glassofrob = 0
for(k in 1:20){
cat(k,'\n')
p = 25
n = 150
t1 = 0.1
t2 = 0.1
Chain = chainestimate(p,n,t1,t1)
(frob[k] = mean(frobnormloss(Chain$omegahat1,Chain$Omega1),frobnormloss(Chain$omegahat2,Chain$Omega2)))
(Adj1 = abs(Chain$Omega1)>10^(-3))
(Adj2 = abs(Chain$Omega2)>10^(-3))
(Adjhat1 = abs(Chain$omegahat1)>10^(-3))
(Adjhat2 = abs(Chain$omegahat1)>10^(-3))
(zeros1 = medgeset(Adjhat1))
if(dim(zeros1)[1]>0){
    (omegahat1 = glasso(Chain$S1,0,zero=zeros1)$wi)}
else{glasso(S,0)$wi}
(zeros2 = medgeset(Adjhat2))
if(dim(zeros2)[1]>0){
    (omegahat2 = glasso(Chain$S2,0,zero=zeros1)$wi)}
else{glasso(S,0)$wi}
(glassofrob[k] = mean(frobnormloss(omegahat1,Chain$Omega1),frobnormloss(omegahat2,Chain$Omega2)))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}
mean(frob)
mean(glassofrob)
mean(fp)
mean(fn)


#find optimal t_k for nearest nbr, t_k = 0.1 seems to work
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
Near = nearnbrestimate(p,n,t1,t2)
(frob[k] = mean(frobnormloss(Near$omegahat1,Near$Omega1),frobnormloss(Near$omegahat2,Near$Omega2)))
(Adj1 = abs(Near$Omega1)>10^(-3))
(Adj2 = abs(Near$Omega2)>10^(-3))
(Adjhat1 = abs(Near$omegahat1)>10^(-3))
(Adjhat2 = abs(Near$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

                                        #replications
frob = 0
fp = 0
fn = 0
glassofrob = 0
for(k in 1:20){
cat(k,'\n')
p = 25
n = 150
t1 = 0.1
t2 = 0.1
Near = nearnbrestimate(p,n,t1,t2)
(frob[k] = mean(frobnormloss(Near$omegahat1,Near$Omega1),frobnormloss(Near$omegahat2,Near$Omega2)))
(Adj1 = abs(Near$Omega1)>10^(-3))
(Adj2 = abs(Near$Omega2)>10^(-3))
(Adjhat1 = abs(Near$omegahat1)>10^(-3))
(Adjhat2 = abs(Near$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
(zero1 = medgeset(Adjhat1))
if(dim(zero1)[1]>0){
    (omegahat1 = glasso(Near$S1,0,zero=zero1)$wi)}
else{glasso(S,0)$wi}
(zero2 = medgeset(Adjhat2))
if(dim(zero2)[1]>0){
    (omegahat2 = glasso(Near$S2,0,zero=zero1)$wi)}
else{glasso(S,0)$wi}
(glassofrob[k] = mean(frobnormloss(omegahat1,Near$Omega1),frobnormloss(omegahat2,Near$Omega2)))
}
mean(frob)
mean(glassofrob)
mean(fp)
mean(fn)

#find optimal t_k for scale-free, t_k = 0.15 seems to work. fp/fn is optimal for 0.1
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
Scale = scalestimate(p,n,t1,t2)
(frob[k] = mean(frobnormloss(Scale$omegahat1,Scale$Omega1),frobnormloss(Scale$omegahat2,Scale$Omega2)))
(Adj1 = abs(Scale$Omega1)>10^(-3))
(Adj2 = abs(Scale$Omega2)>10^(-3))
(Adjhat1 = abs(Scale$omegahat1)>10^(-3))
(Adjhat2 = abs(Scale$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

#replications
frob = 0
fp = 0
fn = 0
glassofrob = 0
for(k in 1:20){
cat(k,'\n')
p = 25
n = 150
t1 = 0.1
t2 = 0.1
Scale = scalestimate(p,n,t1,t2)
(frob[k] = mean(frobnormloss(Scale$omegahat1,Scale$Omega1),frobnormloss(Scale$omegahat2,Scale$Omega2)))
(Adj1 = abs(Scale$Omega1)>10^(-3))
(Adj2 = abs(Scale$Omega2)>10^(-3))
(Adjhat1 = abs(Scale$omegahat1)>10^(-3))
(Adjhat2 = abs(Scale$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
(zero1 = medgeset(Adjhat1))
if(dim(zero1)[1]>0){
    (omegahat1 = glasso(Scale$S1,0,zero=zero1)$wi)}
else{glasso(S,0)$wi}
(zero2 = medgeset(Adjhat2))
if(dim(zero2)[1]>0){
    (omegahat2 = glasso(Scale$S2,0,zero=zero1)$wi)}
else{glasso(S,0)$wi}
(glassofrob[k] = mean(frobnormloss(omegahat1,Scale$Omega1),frobnormloss(omegahat2,Scale$Omega2)))
}
mean(frob)
mean(glassofrob)
mean(fp)
mean(fn)



