library(RGCCA)
library(matrixStats)
library(gRbase)
library(Rgraphviz)
library(ggm)
library(Matrix)
library(MASS)
library(huge)
library(matrixcalc)
library(matrixStats)
library(glasso)

set.seed(12345)
pdmat <- Posdef(n=dim, ev=1:dim)
dim  = 25
mu = rep(0,dim)
n = 130
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
p = dim
Y = scale(Y, center = TRUE, scale = TRUE)


lmbda <- function(alpha,n,p){
    sigma = 1
    temp = alpha/(2*p^2)
    (2*sigma/sqrt(n))*(1-pnorm(temp))
}

lmbda(0.1,150,25)

softthresh <- function(betanew,lambda){
    if(lambda==0){betanew = betanew}
    else{for(i in 1:length(betanew))
        if(betanew[i]>lambda){betanew[i] = betanew[i] - lambda}
        else{if(betanew[i]<(-lambda)){betanew[i] = betanew[i] + lambda}
             else{betanew[i] = 0}}
    }
return(betanew)
}

grad <- function(y,X,betaold,lambda){
    gradient = -t(X)%*%(y-X%*%betaold)
    return(gradient)
}

subgrad <- function(y,X,betaold,lambda){
    gradient = -t(X)%*%(y-X%*%betaold)+lambda*sign(betaold)
    return(gradient)
}

makesymmetric <- function(omegahat){
    p = dim(omegahat)[1]
    for (i in 1:(p-1)){
        temp = which(omegahat[row(omegahat) == (col(omegahat) - i)]>omegahat[row(omegahat) == (col(omegahat) + i)])
        omegahat[row(omegahat) == (col(omegahat) + i)][temp]  = omegahat[row(omegahat) == (col(omegahat) - i)][temp]
        temp = which(omegahat[row(omegahat) == (col(omegahat) - i)]<omegahat[row(omegahat) == (col(omegahat) + i)])
        omegahat[row(omegahat) == (col(omegahat) - i)][temp]  = omegahat[row(omegahat) == (col(omegahat) + i)][temp]
    }
    cat('Making Symmetric!\n')
    return(omegahat)
}

boostdiagonal <- function(omegahat){
    p = dim(omegahat)[1]
    if(min(eigen(omegahat)$value)<=0){
        cat('Boosting diagonal!\n')
        omegahat = omegahat-(min(eigen(omegahat)$value)-0.01)*diag(p)}
    return(omegahat)
}
#below is the proximal gradient method

(frobeniusnorm = 0)
(fp = 0)
(fn = 0)


for(k in 1:20){
(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.001
    lambda = 6*k
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
(adjmatrix = (abs(Omega)>10^(-5)))
(frobeniusnorm[k] = norm((omegahat-Omega), type = c("F")))
(fp[k] = (sum((adjmatrixhat-adjmatrix)>0))/(sum(adjmatrix==0)-p))
(fn[k] = (sum((adjmatrix-adjmatrixhat)>0))/(sum(adjmatrix>0)-p))
}

plot(lambda*(1:20),frobeniusnorm)

which(abs(omegahat)<10^(-5))
max(abs(omegahat))
min(abs(omegahat))

(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega2)>10^(-5)))

g = graph.adjacency(adjmatrix, mode=c("max"), diag=FALSE)
plot(g)

g = graph.adjacency(adjmatrixhat, mode=c("max"), diag=FALSE)
plot(g)



                                        #below is the subgradient method


(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))

                                       
    stepsize = 0.5
    lambda = 10
    iter = 1
    maxIter = 10000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*subgrad(y,X,betaold,lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        (stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
which(abs(omegahat)<10^(-5))
max(abs(omegahat))
min(abs(omegahat))


falsepos <- function(adjmatrix,adjmatrixhat){
    return(sum((adjmatrixhat-adjmatrix)>0)/(sum(adjmatrix==0)-p))}
falseneg <- function(adjmatrix,adjmatrixhat){
return(sum((adjmatrix-adjmatrixhat)>0)/(sum(adjmatrix>0)-p))}
