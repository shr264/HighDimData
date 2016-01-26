set.seed(12345)
n <- 500
p <- 60

comp.grad <- function(y,X,beta){
  t(X)%*%(y-(exp(X%*%beta)/(1+exp(X%*%beta))))
}

log.lik <- function(y,X,beta){
  p <- exp(X%*%beta)/(1+exp(X%*%beta))
  sum(y*log(p)+(1-y)*log(1-p))
}

dataMat <- matrix(runif(n*p,min=-1,max=1),n,p)
A <- svd(dataMat)
U <- A$u
V <- A$v
d <- A$d

true.beta <- rnorm(p,0,2)

############################
### Condition number = 1####
############################
X <- U%*%t(V)
prob <- exp(X%*%true.beta)/(1+exp(X%*%true.beta))
y <- rbinom(n,1,prob)

plot(prob,y)

# Constant step size
alpha <- 5
beta.old <- rep(1,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}


iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

# Decreasing step size
alpha0 <- 10
alpha <- alpha0
beta.old <- rep(1,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
  alpha <- alpha0/sqrt(iter) 
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta)
abline(0,1,asp=1)

### Armijo's Method
s <- 10
sigma <- .5
gamma <- .8
beta.old <- rep(.5,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  check <- 0
  t <- 1
  while(check==0){
    grad.f <- comp.grad(y,X,beta.old)
    beta.new <- beta.old + s*(gamma^t)*grad.f
    a <- log.lik(y,X,beta.new)-log.lik(y,X,beta.old)
    b <- sigma*s*(gamma^t)*t(grad.f)%*%grad.f
    if(a >= b){
      check <- 1
    }
    else{t <- t+1}
  }
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)


#############################
### Condition number = 30 ###
#############################

d.1 <- runif(p,min=1, max=sqrt(30))
d.1[1] <- sqrt(30)
d.1[p] <- 1
X <- U%*%diag(d.1)%*%t(V)
prob <- exp(X%*%true.beta)/(1+exp(X%*%true.beta))
y <- rbinom(n,1,prob)

plot(prob,y)

# Constant step size
alpha <- .5
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

# Decreasing step size
alpha0 <- 1
alpha <- alpha0
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
  alpha <- alpha0/sqrt(iter) 
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

### Armijo's Method
s <- 2
sigma <- .9
gamma <- .5
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  check <- 0
  t <- 1
  while(check==0){
    grad.f <- comp.grad(y,X,beta.old)
    beta.new <- beta.old + s*(gamma^t)*grad.f
    a <- log.lik(y,X,beta.new)-log.lik(y,X,beta.old)
    b <- sigma*s*(gamma^t)*t(grad.f)%*%grad.f
    if(a >= b){
      check <- 1
    }
    else{t <- t+1}
  }
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)


##############################
### Condition number = 500 ###
##############################

d.1 <- runif(p,min=1, max=sqrt(500))
d.1[1] <- sqrt(500)
d.1[p] <- 1
X <- U%*%diag(d.1)%*%t(V)
prob <- exp(X%*%true.beta)/(1+exp(X%*%true.beta))
y <- rbinom(n,1,prob)

plot(prob,y)

# Constant step size
alpha <- .001
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

# Decreasing step size
alpha0 <- .05
alpha <- alpha0
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old + alpha*comp.grad(y,X,beta.old)
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
  alpha <- alpha0/sqrt(iter) 
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

### Armijo's Method
s <- .05
sigma <- .9
gamma <- .1
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  check <- 0
  t <- 1
  while(check==0){
    grad.f <- comp.grad(y,X,beta.old)
    beta.new <- beta.old + s*(gamma^t)*grad.f
    a <- log.lik(y,X,beta.new)-log.lik(y,X,beta.old)
    b <- sigma*s*(gamma^t)*t(grad.f)%*%grad.f
    if(a >= b){
      check <- 1
    }
    else{t <- t+1}
  }
  eps <- abs(log.lik(y,X,beta.new)-log.lik(y,X,beta.old))
  print(c(log.lik(y,X,beta.new),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

##########################
### Ridge Penalty Case ###
##########################

obj.fun <- function(y,X,beta,lambda){
  p <- exp(X%*%beta)/(1+exp(X%*%beta))
  -sum(y*log(p)+(1-y)*log(1-p)) + lambda*t(beta)%*%beta
}

grad.obj <- function(y,X,beta,lambda){
  p <- exp(X%*%beta)/(1+exp(X%*%beta))
  -t(X)%*%(y-(exp(X%*%beta)/(1+exp(X%*%beta)))) + 2*lambda*beta
}

lambda <- .1

# Constant step size
alpha <- .01
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old - alpha*grad.obj(y,X,beta.old,lambda)
  eps <- abs(obj.fun(y,X,beta.new,lambda)-obj.fun(y,X,beta.old,lambda))
  print(c(obj.fun(y,X,beta.new,lambda),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)


# Decreasing step size
alpha0 <- .05
alpha <- alpha0
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  beta.new <- beta.old - alpha*grad.obj(y,X,beta.old,lambda)
  eps <- abs(obj.fun(y,X,beta.new,lambda)-obj.fun(y,X,beta.old,lambda))
  print(c(obj.fun(y,X,beta.new,lambda),eps))
  beta.old <- beta.new
  iter <- iter+1
  alpha <- alpha0/sqrt(iter) 
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)

### Armijo's Method
s <- .1
sigma <- .9
gamma <- .5
beta.old <- rep(0,p)
delta <- .001
maxIter <- 1000
iter <- 1
eps <- 1
while(iter<maxIter && eps>delta ){
  check <- 0
  t <- 1
  while(check==0){
    grad.f <- grad.obj(y,X,beta.old,lambda)
    beta.new <- beta.old - s*(gamma^t)*grad.f
    a <- obj.fun(y,X,beta.old,lambda)-obj.fun(y,X,beta.new,lambda)
    b <- sigma*s*(gamma^t)*t(grad.f)%*%grad.f
    if(a >= b){
      check <- 1
    }
    else{t <- t+1}
  }
  eps <- abs(obj.fun(y,X,beta.new,lambda)-obj.fun(y,X,beta.old,lambda))
  print(c(obj.fun(y,X,beta.new,lambda),eps))
  beta.old <- beta.new
  iter <- iter+1
}

iter
sqrt(t(true.beta-beta.old)%*%(true.beta-beta.old))
plot(beta.old,true.beta,asp=1)
abline(0,1)
