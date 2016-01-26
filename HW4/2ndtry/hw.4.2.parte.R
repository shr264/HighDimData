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
for(k in 1:10){
#k = 1
    cat(k,'\n')
    lambda1 = 140
lambda2 = 0.005*(k-1)+0.005
oldbeta <- rep(0,p)
beta <- rep(0,p)
avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}


pdf('hw4parte2lambda.pdf')
plot(0.005*(seq(1:10)-1)+0.005,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
dev.off()

temp = grouplasso(140,1,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
y = temp$beta
x = temp$truebeta
pdf('hw4parte2beta.pdf')
plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
abline(lm(x~y))
dev.off()
