set.seed(12345)
n <- 500
p <- 100
notsparse <- 20

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

##########################
### Lasso Penalty Case ###
##########################

obj.fun <- function(y,X,true.beta,lambda){
  #true.beta = betaest
  temp = exp(X%*%true.beta)
  temp <- temp/(1+temp)
  term1 = y*log(temp)
  term2 = (1-y)*log(1-temp)
  return((-sum(term1+term2))+sum(lambda*abs(true.beta)))
}

grad.obj <- function(y,X,true.beta,lambda){
  (temp =  exp(X%*%true.beta))
  (temp <- temp/(1+temp))
  return(-t(X)%*%(y-temp)+lambda*sign(true.beta))
}





lambda <- 5



# Decreasing step size
alpha0 <- 1
alpha <- alpha0
beta.old <- rep(1,p)
delta <- 10^(-5)
maxIter <- 100000
iter <- 1
eps <- 1
betaest = beta.old
while(iter<maxIter && eps>delta ){
    (beta.new <- beta.old - alpha*grad.obj(y,X,beta.old,lambda))
    if(obj.fun(y,X,beta.new,lambda)<obj.fun(y,X,betaest,lambda)){
        betaest = beta.new}
  eps <- t(beta.new-betaest)%*%(beta.new-betaest)
  cat(c(obj.fun(y,X,betaest,lambda),eps),'Optimum\n')
  cat(c(obj.fun(y,X,beta.new,lambda),eps),'New\n')
  beta.old <- beta.new
  iter <- iter+1
  alpha <- alpha0/iter 
}

which(abs(betaest)<10^(-3))

iter
sqrt(t(true.beta-betaest)%*%(true.beta-betaest))
plot(betaest,true.beta,asp=1)
abline(0,1)
sum(abs(betaest)>delta)
betaest





lambda <- 0.5

# Constant step size
alpha <- 0.2
beta.old <- rnorm(p,0,5)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
betamat = beta.old
while(iter<maxIter && eps>delta ){
        (beta.new <- beta.old - alpha*grad.obj(y,X,beta.old,lambda))

  eps <- t(beta.new-beta.old)%*%(beta.new-beta.old)
  print(c(obj.fun(y,X,beta.new,lambda),eps))
  beta.old <- beta.new
  betamat = cbind(betamat,beta.old)
  iter <- iter+1
}



betaest = betamat[,2]
for (i in 3:iter){
    if(obj.fun(y,X,betamat[,i],lambda)<obj.fun(y,X,betaest,lambda)){
        betaest = betamat[,i]}}

iter
sqrt(t(true.beta-betaest)%*%(true.beta-betaest))
plot(betaest,true.beta,asp=1)
abline(0,1)
sum(abs(betaest)>delta)
betaest
