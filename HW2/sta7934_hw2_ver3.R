set.seed(12345)
n <- 20
p <- 20
notsparse <- 10

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
  term1 = exp(X%*%true.beta)
  term2 = exp(X%*%true.beta)
  term1[] = 0
  term2[] = 0
  term1[which(temp!=0)] = y[which(temp!=0)]*log(temp[which(temp!=0)])
  term2[which(temp!=1)] = (1-y[which(temp!=1)])*log(1-temp[which(temp!=1)])
  return(-sum(term1+term2))
             #sum(lambda*abs(true.beta)))
}

grad.obj <- function(y,X,beta,lambda){
  p <- exp(X%*%beta)/(1+exp(X%*%beta))
  -t(X)%*%(y-(exp(X%*%beta)/(1+exp(X%*%beta)))) 
}





lambda <- 0.5



# Decreasing step size
alpha0 <- 0.1
alpha <- alpha0
beta.old <- rnorm(p,0,5)
delta <- .001
maxIter <- 100
iter <- 1
eps <- 1
betamat = beta.old
while(iter<maxIter && eps>delta ){
    (beta.new <- beta.old - alpha*grad.obj(y,X,beta.old,lambda))
    (beta.new[which(abs(beta.new)<lambda)]=0)
    (beta.new[which(beta.new>lambda)]=beta.new[which(beta.new>lambda)]-lambda)
    (beta.new[which(beta.new< (-lambda))]=beta.new[which(beta.new<(-lambda))]+lambda)
  eps <- t(beta.new-beta.old)%*%(beta.new-beta.old)
  print(c(obj.fun(y,X,beta.new,lambda),eps))
  beta.old <- beta.new
  betamat = cbind(betamat,beta.old)
  iter <- iter+1
  alpha <- alpha0/sqrt(iter) 
}

betaest = betamat[,1]
for (i in 2:iter){
    print(obj.fun(y,X,betamat[,i],lambda))
    if(obj.fun(y,X,betamat[,i],lambda)<obj.fun(y,X,betaest,lambda)){
        betaest = betamat[,i]}}

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
    (beta.new[which(abs(beta.new)<lambda)]=0)
    (beta.new[which(beta.new>lambda)]=beta.new[which(beta.new>lambda)]-lambda)
    (beta.new[which(beta.new< (-lambda))]=beta.new[which(beta.new<(-lambda))]+lambda)
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
