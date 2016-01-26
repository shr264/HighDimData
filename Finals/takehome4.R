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
(Arow1 = cbind(-2*diag(p),zeros,diag(p),zeros))
(Arow2 = cbind(zeros,zeros,-diag(p),zeros))
(Arow3 = cbind(zeros,-2*diag(p),zeros,diag(p)))
(Arow4 = cbind(zeros,zeros,zeros,-diag(p)))
(Arow5 = cbind(-S1,zeros,S1,zeros))
(Arow6 = cbind(S1,zeros,-S1,zeros))
(Arow7 = cbind(zeros,-S2,zeros,S2))
(Arow8 = cbind(zeros,S2,zeros,-S2))
(Arow9 = cbind(diag(p),-diag(p),-diag(p),diag(p)))
(Arow10 = cbind(-diag(p),diag(p),diag(p),-diag(p)))
(A = rbind(Arow1,Arow2,Arow3,Arow4,Arow5,Arow6,Arow7,Arow8,Arow9,Arow10))
return(A)}

makeb <- function(p,i,t1,t2,t3){
(ei = as.matrix(diag(p)[,i]))
(ones = matrix(1,nrow=p,ncol=1))
(b = rbind(0*ones,0*ones,0*ones,0*ones,t1+ei,t1-ei,t2+ei,t2-ei,t3*ones,-t3*ones))
return(b)}


chainestimatem1 <- function(p,n,t1,t2,t3){
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
A = makeA(S1,S2,p)
c1 = matrix(1,ncol = 1,nrow = 2*p)
c2 = matrix(0,ncol = 1,nrow = 2*p)
(c = rbind(c1,c2))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2,t3))
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

#find optimal t1,t2 for chain graph. for chain 0.25 seems good in terms of fp/fn. 
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
t3 = 0.005
Chain = chainestimatem1(p,n,t1,t1,t3)
(frob[k] = mean(frobnormloss(Chain$omegahat1,Chain$Omega1),frobnormloss(Chain$omegahat2,Chain$Omega2)))
(Adj1 = abs(Chain$Omega1)>10^(-3))
(Adj2 = abs(Chain$Omega2)>10^(-3))
(Adjhat1 = abs(Chain$omegahat1)>10^(-3))
(Adjhat2 = abs(Chain$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

#find optimal t3 for chain graph.t3 = 0.005 seems to work the best
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.25
t2 = 0.25
t3 = 0.005*k
Chain = chainestimatem1(p,n,t1,t1,t3)
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
t1 = 0.25
t2 = 0.25
t3 = 0.005
Chain = chainestimatem1(p,n,t1,t1,t3)
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

nearnbrestimatem1 <- function(p,n,t1,t2,t3){
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
c1 = matrix(1,ncol = 1,nrow = 2*p)
c2 = matrix(0,ncol = 1,nrow = 2*p)
(c = rbind(c1,c2))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2,t3))
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

#find optimal t1,t2 for nearest neighbor graph. for chain 0.25 seems good in terms of fp/fn. 
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
t3 = 0.005
Chain = nearnbrestimatem1(p,n,t1,t1,t3)
(frob[k] = mean(frobnormloss(Chain$omegahat1,Chain$Omega1),frobnormloss(Chain$omegahat2,Chain$Omega2)))
(Adj1 = abs(Chain$Omega1)>10^(-3))
(Adj2 = abs(Chain$Omega2)>10^(-3))
(Adjhat1 = abs(Chain$omegahat1)>10^(-3))
(Adjhat2 = abs(Chain$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

#find optimal t3 for nearest neighbor graph.t3 = 0.025 seems to work the best
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.25
t2 = 0.25
t3 = 0.005*k
Chain = nearnbrestimatem1(p,n,t1,t1,t3)
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
t1 = 0.25
t2 = 0.25
t3 = 0.025
Chain = nearnbrestimatem1(p,n,t1,t1,t3)
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

scaleestimatem1 <- function(p,n,t1,t2,t3){
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
c1 = matrix(1,ncol = 1,nrow = 2*p)
c2 = matrix(0,ncol = 1,nrow = 2*p)
(c = rbind(c1,c2))
(f.dir = rep("<=",dim(A)[1]))
omegahat1 = matrix(0,nrow=p,ncol=p)
omegahat2 = matrix(0,nrow=p,ncol=p)
for(i in 1:p){
    #i=1
    (b = makeb(p,i,t1,t2,t3))
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

#find optimal t1,t2 for scale free graph. 0.15 seems good in terms of fp/fn. 
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.05*k
t2 = 0.05*k
t3 = 0.005
Chain = scaleestimatem1(p,n,t1,t1,t3)
(frob[k] = mean(frobnormloss(Chain$omegahat1,Chain$Omega1),frobnormloss(Chain$omegahat2,Chain$Omega2)))
(Adj1 = abs(Chain$Omega1)>10^(-3))
(Adj2 = abs(Chain$Omega2)>10^(-3))
(Adjhat1 = abs(Chain$omegahat1)>10^(-3))
(Adjhat2 = abs(Chain$omegahat1)>10^(-3))
(fp[k] = mean(falsepos(Adjhat1,Adj1),falsepos(Adjhat2,Adj2)))
(fn[k] = mean(falseneg(Adjhat1,Adj1),falseneg(Adjhat2,Adj2)))
}

#find optimal t3 for scale free graph.t3 = 0.02 seems to work the best
set.seed(12345)
frob = 0
fp = 0
fn = 0
for(k in 1:10){
cat(k,'\n')
p = 25
n = 150
t1 = 0.15
t2 = 0.15
t3 = 0.005*k
Chain = scaleestimatem1(p,n,t1,t1,t3)
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
t1 = 0.15
t2 = 0.15
t3 = 0.02
Chain = scaleestimatem1(p,n,t1,t1,t3)
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
