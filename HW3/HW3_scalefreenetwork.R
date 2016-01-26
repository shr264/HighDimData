
library(igraph)
library(MASS)
library(matrixcalc)
set.seed(12345)

scalefree <- function(p){ 
OMEGA = 0
# Here I generate the graph of scale-free network
# thats created by that barabasi algorithm

c <- rep(1,p)
c[c(p-4,p-3,p-2,p-1)] <- 2
c[p] <- 3

sf.graph <- barabasi.game(p,power=1,out.seq=c,directed=FALSE)
plot(sf.graph)


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


p = 25
Scalefreenetwork = scalefree(p)
Omega1 = Scalefreenetwork$omega
Sigma1 = Scalefreenetwork$sigma

(adjmatrix = (abs(Omega1)>10^(-5)))

#density
(sum(adjmatrix)-p)/(choose(p,2))

#density2
(sum(adjmatrix))/p^2

g1 = graph.adjacency(adjmatrix, mode=c("max"), diag=FALSE)
plot(g1,main="Graphical Model based on True Concentration Matrix")

dim  = p
mu = rep(0,dim)
n = 150
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y = scale(Y, center = TRUE, scale = TRUE)
S = (1/n)*t(Y)%*%Y

#x = huge(Y,lambda = 0.033*seq(1:3),method = 'mb')
#plot(x)

(pdfrobeniusnorm = 0)
(frobeniusnorm = 0)
(fp = 0)
(fn = 0)

#k = 5
for(k in 1:20){
(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(1,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 6*(k-1)
    iter = 1
    maxIter = 10000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))
pdomegahat = makesymmetric(omegahat)
while(min(eigen(pdomegahat)$value)<0){
    pdomegahat = boostdiagonal(pdomegahat)}
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(pdfrobeniusnorm[k] = (norm((pdomegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(frobeniusnorm[k] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[k] = (sum((upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat-upper.tri(adjmatrix,diag=FALSE)*adjmatrix)>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix==0)-(1/2)*(p)*(p+1)))
(fn[k] = (sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))
}

plot(6*(0:19),pdfrobeniusnorm,type="l",col='blue',xlab=expression(lambda),ylab="Frobenius Norm",main="Frobenius Norm of Difference of Estimate to True Value")
plot(6*(0:19),frobeniusnorm,type="l",col='green',xlab=expression(lambda),ylab="F",main="F")
plot(6*(0:19),fp,type="l",col='red',xlab=expression(lambda),ylab="FP/FN",main="FP/FN")
lines(6*(0:19),fn,col='blue')
legend(100,0.8,c("FP","FN"),lty=c(1,1), lwd=c(2.5,2.5), col=c("red","blue"))





(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 15
    iter = 1
    maxIter = 100000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))
pdomegahat = makesymmetric(omegahat)
while(min(eigen(pdomegahat)$value)<0){
    pdomegahat = boostdiagonal(pdomegahat)}
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))

#density
(sum(adjmatrix)-p)/(choose(p,2))

#density2
(sum(adjmatrix))/p^2

g2 = graph.adjacency(adjmatrixhat, mode=c("max"), diag=FALSE)
plot(g2,main="Graphical Model based on Estimated Concentration Matrix")


                                        #replications
(pdfrobeniusnorm = 0)
(frobeniusnorm = 0)
(fp = 0)
(fn = 0)
for (K in 1:10){
Scalefreenetwork = scalefree(p)
Omega1 = Scalefreenetwork$omega
Sigma1 = Scalefreenetwork$sigma
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y = scale(Y, center = TRUE, scale = TRUE)
S = (1/n)*t(Y)%*%Y

(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 15
    iter = 1
    maxIter = 10000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))
pdomegahat = makesymmetric(omegahat)
while(min(eigen(pdomegahat)$value)<0){
    pdomegahat = boostdiagonal(pdomegahat)}
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(pdfrobeniusnorm[K] = (norm((pdomegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(frobeniusnorm[K] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[K] = (sum((upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat-upper.tri(adjmatrix,diag=FALSE)*adjmatrix)>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix==0)-(1/2)*(p)*(p+1)))
(fn[K] = (sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))    
}
(PDFrob = mean(pdfrobeniusnorm))
(Frob = mean(frobeniusnorm))
(FP = mean(fp))
(FN = mean(fn))
