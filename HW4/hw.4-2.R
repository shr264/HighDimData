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


setwd("/Users/syedrahman/Documents/Spring2015/HighDimData/HW/HW4")

f2 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
    (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
    temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2)))
    temp3 = thetaj*Zj
    for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj[k]*notZj[k]}
    temp4 = (1/2)*t(w - temp3)%*%(w-temp3)
    out = temp1+temp2+temp4
    return(out)}


#code for group lasso
grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){

if(missing(maxiter)){maxiter = 100}
if(missing(weights)){weights = sqrt(blocksize)}
lambda1vec = lambda1*weights
    #lambda2 = 0

iter = 1
eps = 1
if(missing(tol)){tol = 10^(-5)}

while(eps>tol&iter<maxiter){
    cat('Iteration:',iter,'Eps:',eps,'\n')
    for(currentgroup in 1:group){    
        (oldbeta = beta)
        (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
        (Xl = X[,group.indx==currentgroup])
        (betal = beta[group.indx==currentgroup])

        (ZkThk = r)
        (ZkThk[] = 0)
        for(currentindex in 1:blocksize[currentgroup]){
                ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
        }

        (a = t(Xl)%*%r)
        (t = a)
        (t[] = 0)
        for(j in 1:blocksize[currentgroup]){
            if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
            else{t[j] = sign(a[j]/lambda2)}
        }
        
        if(lambda2==0){
            if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal=0}
                    else{# otherwise here we minimize the function using coordinate descent
            (w = r - ZkThk)
            for(j in 1:blocksize[currentgroup]){
                    (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
                    (betal[j] = temp$minimum)
            }
            (beta[group.indx==currentgroup] = betal)
            betal[]=0
        }
        }
        
            else{
        (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
        if(J<=1){#setting the entire block to 0
            betal=0
        }
        else{# otherwise here we minimize the function using coordinate descent
            (w = r - ZkThk)
            for(j in 1:blocksize[currentgroup]){
                if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
                else{
                    (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
                    (betal[j] = temp$minimum)
                }
            }
        }
        (beta[group.indx==currentgroup] = betal)
        betal[]=0
    }
    }
    eps = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
    iter = iter + 1  
}
return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps))
}





# Code for 10-fold cross-validation to obtain optimal tuning parameters

crossval <- function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){

(m <- ceiling(n*0.1))
(numTests <- n/m) 
(TrainBetas <- matrix(NA, p))
(TestErrors <- rep(NA, numTests))
for (i in 1:numTests){
    (XTest <- X[((m*(i-1)+1):(m*i)), ])
    (yTest <- y[((m*(i-1)+1):(m*i))])
    (XTrain <- X[-((m*(i-1)+1):(m*i)), ])
    (yTrain <- y[-((m*(i-1)+1):(m*i))])
    (nTrain <- length(yTrain))
    (TrainingResults = grouplasso(lambda1,lambda2,p,nTrain,yTrain,XTrain,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group))
    (TrainBetas <- as.matrix(TrainingResults$beta))
    (TestErrors[i] <- (1/2) * as.numeric( t(yTest - XTest%*%TrainBetas)%*% (yTest - XTest%*%TrainBetas)))
}

(avgError <- mean(TestErrors))
return(avgError)
}


                                        #part b, lambda2 = 0
set.seed(123456)
p = 100
n = 1000
group = 20
blocksize = rep(ceiling(p/group),group)
nonsparse = 25
X <- matrix(runif(n*p,min=-5,max=5),n,p)
truebeta <- rep(0,p)
truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
y <- X%*%truebeta + rnorm(n)
group.indx <- rep(0,p)
for(i in 1:group){
  group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
}

#y = scale(y,center=TRUE,scale=FALSE)
#X = scale(X,center=TRUE,scale=FALSE)
weights = sqrt(blocksize)
oldbeta <- rep(0,p)
beta <- rep(0,p)

avgerror = 0
for(k in 1:20){
    lambda1 = 40*(k-1)+100
lambda2 = 0
oldbeta <- rep(0,p)
beta <- rep(0,p)
    avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}


pdf('hw4partblambda.pdf')
plot(40*(seq(1:20)-1)+100,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
dev.off()


#turns out lambda_1 = 220 was ideal
temp = grouplasso(220,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
y = temp$beta
x = temp$truebeta
pdf('hw4partbbeta.pdf')
plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
abline(lm(x~y))
dev.off()



                                        #part d, lambda2 = 0
set.seed(123456)
p = 100
n = 1000
group = 9
blocksize = c(10,5,5,3,2,25,20,20,10)
nonsparse = 25
X <- matrix(runif(n*p,min=-5,max=5),n,p)
truebeta <- rep(0,p)
truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
y <- X%*%truebeta + rnorm(n)
group.indx <- rep(0,p)
group.indx[1:blocksize[1]] <- 1
for(i in 2:group){
    group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
}
#y = scale(y,center=TRUE,scale=FALSE)
#X = scale(X,center=TRUE,scale=FALSE)
weights = sqrt(blocksize)

oldbeta <- rep(0,p)
beta <- rep(0,p)

avgerror = 0
for(k in 1:20){
    cat(k,'\n')
    lambda1 = 20*(k-1)+100
lambda2 = 0
oldbeta <- rep(0,p)
beta <- rep(0,p)
    avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}

pdf('hw4partdlambda.pdf')
plot(20*(seq(1:20)-1)+100,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
dev.off()

temp = grouplasso(240,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
y = temp$beta
x = temp$truebeta
pdf('hw4partdbeta.pdf')
plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
abline(lm(x~y))
dev.off()

                                        #part e scenario 1
set.seed(123456)
p = 100
n = 1000
group = 20
blocksize = rep(ceiling(p/group),20)
nonsparsepergroup = 4
X <- matrix(runif(n*p,min=-5,max=5),n,p)
truebeta <- rep(0,p)
for(i in 1:5){
    truebeta[(5*(i-1)+1):(5*(i-1)+nonsparsepergroup)] <- runif(nonsparsepergroup,min=-2,max=2)
}
y <- X%*%truebeta + rnorm(n)
group.indx <- rep(0,p)
for(i in 1:group){
  group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
}
#y = scale(y,center=TRUE,scale=FALSE)
#X = scale(X,center=TRUE,scale=FALSE)
weights = sqrt(blocksize)

oldbeta <- rep(0,p)
beta <- rep(0,p)

avgerror = 0
for(k in 1:20){
    cat(k,'\n')
    lambda1 = 220
lambda2 = 20*(k-1)+60
oldbeta <- rep(0,p)
beta <- rep(0,p)
    avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}


pdf('hw4parte1lambda.pdf')
plot(20*(seq(1:20)-1)+60,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
dev.off()

temp = grouplasso(220,280,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
y = temp$beta
x = temp$truebeta
pdf('hw4parte1beta.pdf')
plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
abline(lm(x~y))
dev.off()
                                        #part e scenario 2

set.seed(123456)
p = 100
n = 1000
group = 9
blocksize = c(10,5,5,3,2,25,20,20,10)
nonsparseperblock = c(8,4,4,2,1)
X <- matrix(runif(n*p,min=-5,max=5),n,p)
truebeta <- rep(0,p)
truebeta[1:nonsparseperblock[1]] <- runif(nonsparseperblock[1],min=-2,max=2)
for(i in 2:5){
    truebeta[(sum(blocksize[1:(i-1)])+1):(sum(blocksize[1:(i-1)])+nonsparseperblock[i])] <- runif(nonsparseperblock[i],min=-2,max=2)}
y <- X%*%truebeta + rnorm(n)
group.indx <- rep(0,p)
group.indx[1:blocksize[1]] <- 1
for(i in 2:group){
    group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
}
#y = scale(y,center=TRUE,scale=FALSE)
#X = scale(X,center=TRUE,scale=FALSE)
weights = sqrt(blocksize)

oldbeta <- rep(0,p)
beta <- rep(0,p)

avgerror = 0
for(k in 1:20){
    cat(k,'\n')
    lambda1 = 250
lambda2 = 20*(k-1)+20
oldbeta <- rep(0,p)
beta <- rep(0,p)
    avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}


pdf('hw4parte2lambda.pdf')
plot(20*(seq(1:20)-1)+20,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
dev.off()

temp = grouplasso(250,100,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
y = temp$beta
x = temp$truebeta
pdf('hw4parte2beta.pdf')
plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
abline(lm(x~y))
dev.off()


