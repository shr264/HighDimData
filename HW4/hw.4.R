set.seed(123456)

# objective function for group lasso
obj.fun <- function(X,y,beta,lambda,w,group.indx){
  p <- dim(X)[2]
  n.group <- length(unique(group.indx))
  group.norm <- rep(0,n.group)
  z <- y-X%*%beta
  for(i in 1:n.group){
    beta.g <- beta[group.indx==i]
    group.norm[i] <- sqrt(t(beta.g)%*%beta.g)
  }
  t(z)%*%z + lambda*t(w)%*%group.norm
}

# objective function for sparse group lasso
obj.fun.sparse <- function(X,y,beta,lambda1,lambda2,w,group.indx){
  p <- dim(X)[2]
  n.group <- length(unique(group.indx))
  group.norm <- rep(0,n.group)
  z <- y-X%*%beta
  for(i in 1:n.group){
    beta.g <- beta[group.indx==i]
    group.norm[i] <- sqrt(t(beta.g)%*%beta.g)
  }
  t(z)%*%z + lambda1*t(w)%*%group.norm + lambda2*sum(abs(beta))
}



# compute max(x,0)
positive <- function(x){
  pos.x <- 0
  if(x>0){
    pos.x <- x
  }
  pos.x
}

# Soft thresholding function
soft.thresh <- function(x,lambda){
  x.thresh <- rep(0,length(x))
  x.thresh[x>lambda] <- x[x>lambda] - lambda
  x.thresh[x< -lambda] <- x[x<lambda] + lambda
  x.thresh
}

# simulate data 
X <- matrix(runif(100000,min=-5,max=5),1000,100)
beta <- rep(0,100)
beta[1:25] <- runif(25,min=-2,max=2)
y <- X%*%beta + rnorm(1000)
group.indx <- rep(0,100)
for(i in 1:20){
  group.indx[((i-1)*5+1):(i*5)] <- i
}

lambda <- 1

# all weights taken to be 1 for now
w <- rep(1,20)

max.iter <- 1000    # max iterations for algorithm
iter <- 0
tol <- .05    # algorithm stops when decrease in obj.fun is less than tol
n.group <- 20     # number of groups
beta.old <- rep(1,100)     #initialize beta    
eps <- 100     
obj.old <- obj.fun(X,y,beta.old,lambda,w,group.indx)
while(eps>tol & iter<max.iter){
  beta.new <- rep(0,100)
  for(i in 1:n.group){
    X.g <- X[,group.indx==i]     # sub-matrix of X corresponding to group g
    p.g <- dim(X.g)[2]
    beta.g <- beta.old[group.indx==i]  # sub-vector of beta corresponding to group g
    norm.g <- as.vector(sqrt(t(beta.g)%*%beta.g))  # ||beta.g||
    beta.mg <- beta.old
    beta.mg[group.indx==i] <- 0      # beta.mg (minus g) = beta vector with group g values set to 0
    z <- t(X.g)%*%(y-X%*%beta.old)   # next two lines compute ||X.g'(Y-X\beta)||
    norm.z <- sqrt(t(z)%*%z)   
    # If ||X.g'(Y-X\beta)|| <= lambda, set beta.g = 0, otherwise beta.g = (X.g'X.g + (lambda/norm.g)I)^{-1}X.g'(y-X%*%beta.mg)
    beta.new[group.indx==i]  <- positive((1-((lambda*w[i])/norm(z))))*solve(t(X.g)%*%X.g+(lambda/norm.g)*diag(p.g))%*%t(X.g)%*%(y-X%*%beta.mg)
}
  obj.new <- obj.fun(X,y,beta.new,lambda,w,group.indx)    # compute obj.fun for beta.new
  eps <- abs(obj.new-obj.old)    #  compute change in obj.fun
  beta.old <- beta.new     # update old values
  obj.old <- obj.new
  iter <- iter+1
  if(iter%%100==0){print(iter)}
}

sqrt(t(beta.old-beta)%*%(beta.old-beta))
plot(beta,beta.old)



# Sparse group lasso

lambda1 <- 1
lambda2 <- 1


max.iter <- 1000    # max iterations for algorithm
iter <- 0
tol <- .001    # algorithm stops when decrease in obj.fun is less than tol
n.group <- 20     # number of groups
beta.old <- rep(1,100)     #initialize beta    
eps <- 100     
obj.old <- obj.fun.sparse(X,y,beta.old,lambda1,lambda2,w,group.indx)
while(eps>tol & iter<max.iter){
  beta.new <- rep(0,100)
  for(i in 1:n.group){
    X.g <- X[,group.indx==i]     # sub-matrix of X corresponding to group g
    p.g <- dim(X.g)[2]
    beta.g <- beta.old[group.indx==i]  # sub-vector of beta corresponding to group g
    beta.g.new <- rep(0,p.g)
    r.i <- y - X[,-which(group.indx==i)]%*%beta.old[-which(group.indx==i)]
    for(j in 1:p.g){
      x.j <- X.g[,j]  # get jth vector of matrix X.g
      X.mj <- X.g[,-j] # X.g with jth column vector removed
      beta.mj <- beta.g[-j]  # beta.g without jth component
      normsq.xj  <- t(x.j)%*%(x.j)
      v.j <- t(x.j)%*%(r.i-X.mj%*%beta.mj)/normsq.xj
      beta.g.new[j] <- soft.thresh(v.j,lambda2/normsq.xj) # coordinate update under l1 penalty
    }
    norm.g.new <- sqrt(t(beta.g.new)%*%beta.g.new)
    beta.new[which(group.indx==i)] <- positive(1-(lambda1/norm.g.new))*beta.g.new  #  apply group thresholding
  }
  obj.new <- obj.fun.sparse(X,y,beta.new,lambda1,lambda2,w,group.indx)    # compute obj.fun for beta.new
  eps <- abs(obj.new-obj.old)    #  compute change in obj.fun
  beta.old <- beta.new     # update old values
  obj.old <- obj.new
  iter <- iter+1
  if(iter%%100==0){print(iter)}
}

sqrt(t(beta.old-beta)%*%(beta.old-beta))
plot(beta,beta.old)









