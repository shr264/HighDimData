set.seed(12345)
n <- 50
p <- 30
notsparse <- 5

grad.obj <- function(y,X,true.beta,lambda){
    temp = exp(X%*%true.beta)
    slope = rep(0,p)
    grad = (t(X)%*%(y-(temp)/(1+temp)))
    slope[true.beta>lambda] = grad[true.beta>lambda] + lambda
    slope[true.beta<(-lambda)] = grad[true.beta<(-lambda)] - lambda
    return(slope)
}

obj.fun <- function(y,X,true.beta,lambda){
  #true.beta = beta.new
  temp = exp(X%*%true.beta)
  temp <- temp/(1+temp)
  term1 = exp(X%*%true.beta)
  term2 = exp(X%*%true.beta)
  term1[] = 0
  term2[] = 0
  term1[which(temp!=0)] = y[which(temp!=0)]*log(temp[which(temp!=0)])
  term2[which(temp!=1)] = (1-y[which(temp!=1)])*log(1-temp[which(temp!=1)])
  return(sum(term1+term2)+sum(lambda*abs(true.beta)))
}


dataMat <- matrix(runif(n*p,min=-1,max=1),n,p)
A <- svd(dataMat)
U <- A$u
V <- A$v
d <- A$d


############################
### Condition number = 1####
############################


true.beta <- rnorm(notsparse,0,2)
true.beta <- rbind(matrix(true.beta,nrow = notsparse,ncol = 1),matrix(0,nrow = p-notsparse,ncol = 1))

X <- U%*%t(V)
prob <- exp(X%*%true.beta)/(1+exp(X%*%true.beta))
y <- rbinom(n,1,prob)
plot(prob,y)

k = 20
sparsenessmat = matrix(0,nrow=k,ncol=1)
objfuncmat = matrix(0,nrow=k,ncol=1)
for (count in 1:k){
lambda <- 0.01*count
### Armijo's Method
s <- .1
sigma <- .9
gamma <- .5
beta.old <- rep(c(1),p)
beta.old <- (1/sqrt(t(beta.old)%*%beta.old))*beta.old
delta <- 10^(-5)
maxIter <- 1000
iter <- 1
eps <- 1
betamat = beta.old
while(iter<(maxIter+1)&&eps>delta){
  check <- 0
  t <- 1
  while(check==0){
    (grad.f <- grad.obj(y,X,beta.old,lambda))
    (beta.new <- beta.old - s*(gamma^t)*grad.f)
    (a <- obj.fun(y,X,beta.old,lambda)-obj.fun(y,X,beta.new,lambda))
    (b <- sigma*s*(gamma^t)*t(grad.f)%*%grad.f)
    if(a >= b){
      check <- 1
    }
    else{t <- t+1}
  }
  eps <- abs(obj.fun(y,X,beta.new,lambda)-obj.fun(y,X,beta.old,lambda))
  beta.new[which(abs(beta.new)<lambda)]=0
  beta.old <- beta.new
  betamat = cbind(betamat,beta.old)
  print(c(obj.fun(y,X,beta.old,lambda),eps))
  iter <- iter+1
}

betaest = betamat[,1]
for (i in 2:iter){
    if(obj.fun(y,X,betamat[,i],lambda)<obj.fun(y,X,betaest,lambda)){
        betaest = betamat[,i]}}

iter
sqrt(t(true.beta-betaest)%*%(true.beta-betaest))
plot(betaest,true.beta,asp=1)
abline(0,1)
sum(abs(betaest)>delta)
sparsenessmat[count,1] = sum(abs(betaest)<10^(-3))
objfuncmat[count,1] = obj.fun(y,X,betaest,lambda)
}

plot(0.2*(1:k),sparsenessmat)
plot(0.2*(1:k),objfuncmat)
