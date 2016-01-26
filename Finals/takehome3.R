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


grad <- function(y,oldX,A){
    (J = length(y))
    (out = 0)
    for(j in 1:J){
        j = 1
        out = out - 2*(y[[j]]-matrix.trace(t(oldX)%*%A[[j]]))*A[[j]]
    }
    return(out)}

objective <- function(ytest,trainX,Atest){
    (J = length(ytest))
    (out = 0)
    if(J>1){
    for(j in 1:J){
        out = out + (ytest[[j]]-matrix.trace(t(trainX)%*%Atest[[j]]))^2
    }}
    else{out = out + (ytest-matrix.trace(t(trainX)%*%Atest))^2}
    return(out)}




proxmialgradient3 <- function(y,A,lambda,stepsize,initialX,maxiter,tol,trueX){
                              oldX = initialX
                              iter = 1
                              eps = 1
                              error = 0
                              while(eps>tol&iter<maxiter){
                                      (cat('Iter:', iter, 'Eps:', eps, '\n'))
                                      (newX = oldX - stepsize*grad(y,oldX,A))
                                      (svdnewX = svd(newX))
                                      (threshd = sign(svdnewX$d)*max(abs(svdnewX$d)-stepsize*lambda,0))
                                      (newX = svdnewX$u%*%diag(threshd)%*%t(svdnewX$v))
                                      (eps = norm(newX-oldX,type=c('F'))/norm(oldX,type=c('F')))
                                      (iter = iter + 1)
                                      (oldX = newX)
                                      (error[iter] = norm(newX-trueX,type=c('F'))/norm(trueX,type=c('F')))
                                      
}
                              return(list(X = newX, iter=iter, eps = eps,error = error))
                          }


crossvalidate <- function(y,A,lambda,stepsize,initialX,maxiter,tol,K){
obj = rep(0,K)
for(k in 1:K){
ytrain = list()
Atrain = list()
ytest = y[[k]]
Atest = A[[k]]
count = 1
for(j in setdiff(seq(1:5),k)){
    ytrain[[count]] = y[[j]]
    Atrain[[count]] = A[[j]]
count = count + 1}
train = proxmialgradient3(ytrain,Atrain,lambda = lambda,stepsize=stepsize,initialX=initialX,maxiter=maxiter,tol=tol)
obj = objective(ytest,train$X,Atest)}
meanobj = mean(obj)
return(meanobj)
}

replicate <- function(p,n,J,lambda,stepsize,initialX,maxiter,tol,maxrep){
normvec = rep(0,maxrep)    
for(l in 1:maxrep){
A = list()
y = list()
trueX <- matrix(runif(n*p,min=-5,max=5),n,p)
for(j in 1:J){
A[[j]] <- matrix(runif(n*p,min=-5,max=5),n,p)
y[[j]] <- matrix.trace(t(trueX)%*%A[[j]]) + rnorm(1)
}

optimalX = proxmialgradient3(y,A,lambda,stepsize,initialX,maxiter,tol)
normvec[l] = norm(optimalX$X-trueX,type=c('F'))/norm(trueX,type=c('F'))
}
return(mean(normvec))
}

set.seed(123456)
p = 5
n = 10
J = 5
A = list()
y = list()
trueX <- matrix(runif(n*p,min=-5,max=5),n,p)
trueX <- svd(trueX)$u%*%t(svd(trueX)$v)
for(j in 1:J){
A[[j]] <- matrix(runif(n*p,min=-5,max=5),n,p)
y[[j]] <- matrix.trace(t(trueX)%*%A[[j]]) + rnorm(1)
}
obj = 0
(initial = svd(matrix(1,n,p)))

for(k in 1:10){
(lambda = 20*k+530)
(stepsize = 0.0001)
(initialX = initial$u%*%t(initial$v)) 
(maxiter = 1000)
(tol = 10^(-5))
(K = 5)
obj[k] = crossvalidate(y,A,lambda,stepsize,initialX,maxiter,tol,K)}


pdf('takehome3cv.pdf')
plot(20*seq(1:10)+530,obj,type='l',col='blue',ylab='Objective function ',xlab=expression(lambda[1]),main = 'Objective Function versus Penalizaton Parameter')
dev.off()

                                        #from the plot we settle on 360 as the optimal value of lambda1 = 550 
set.seed(123456)
p = 5
n = 10
J = 5
A = list()
y = list()
trueX <- matrix(runif(n*p,min=-5,max=5),n,p)
trueX <- svd(trueX)$u%*%t(svd(trueX)$v)
for(j in 1:J){
A[[j]] <- matrix(runif(n*p,min=-5,max=5),n,p)
y[[j]] <- matrix.trace(t(trueX)%*%A[[j]]) + rnorm(1)
}
(stepsize = 0.0001)
(initial = svd(matrix(1,n,p)))
(initialX = initial$u%*%t(initial$v))
(maxiter = 1000)
(tol = 10^(-5))
(maxrep = 10)

X = proxmialgradient3(y,A,570,stepsize,initialX,maxiter,tol,trueX)
pdf('takehome3error.pdf')
plot(1:(length(X$error)-1),X$error[2:(length(X$error))],type='l',col='red',ylab='Relative Error',xlab='Iterations',main = 'Relative Error')
dev.off()

replicate(p,n,J,lambda=100,stepsize,initialX,maxiter,tol,maxrep)

replicate(p,n,J,lambda=100,stepsize,initialX,maxiter,tol,1)

# average frobenius loss was 0.986168 over 10 replications
