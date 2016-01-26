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

set.seed(12345)
p  = 4
chain <- function(p){
Sigma1 <- diag(p)
s <- c(0, rep(NA,p-1))
for (i in 2:p) s[i] <- s[i-1] + runif(1,0.5,1)
for (i in 1:(p-1)) {
   for (j in (i+1):p) {
   Sigma1[i,j] <- exp(-abs(s[i]-s[j])/2)
   }
}
Sigma1 <- Sigma1 + t(Sigma1) - diag(diag(Sigma1)) 
Omega1 <- solve(Sigma1)
return(Omega1)}
nearestneighbor <- function(p){
x <- runif(p,0,1)
y <- runif(p,0,1)
points <- rbind(x,y)
dist <- matrix(rep(0,p*p),p,p)
for (i in 1:p-1){
   for (j in (i+1):p) {
       dist[i,j] <- sqrt(sum(abs(points[,i]-points[,j])^2))
   }
}
dist <- dist + t(dist) - diag(diag(dist))
nearest.neighbors <- t(apply(dist,1,order)[2:3, ])

Omega2 <- matrix(rep(0,p*p),p,p)
for (i in 1:p) {
    Omega2[i, nearest.neighbors[i,]] <- dist[i, nearest.neighbors[i, ]]
    Omega2[nearest.neighbors[i,], i] <- Omega2[i, nearest.neighbors[i,]]
}
Omega2 <- Omega2 + diag(p)
round(Omega2, digits = 10)
return(Omega2)
}
Om1 = nearestneighbor(p)
eigen(Om1)
Om2 = nearestneighbor(p)
Om3 = nearestneighbor(p)
Omlist = list(Om1,Om2,Om3)
Omlist[[1]]
Sig1 = chol2inv(chol(Om1))
Sig2 = solve(Om2)
Sig3 = solve(Om3)
Om1-t(Om1)
mu = rep(0,p)
n1 = 2*p
Y1 = mvrnorm(n, mu, Sig1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y1 = scale(Y1, center = TRUE, scale = TRUE)
S1 = t(Y1)%*%Y1/n1

softthreshmatrix
A = Omlist 

groupupdate <- function(Z,A,lambda,rho,lambda2){
    (tempsum = A[[1]])
    (p = dim(tempsum)[[1]])
    (tempsum[] = 0)
    (K = length(A))
    for (k in 1:K){tempsum = tempsum + (soft(A[[k]],lambda/rho,penalize.diagonal=TRUE))^2}
    (temp = rho*(sqrt(tempsum)))
    for (k in 1:K){
    Z[[k]] = soft(A[[k]],lambda/rho,penalize.diagonal=FALSE)*matrix(mapply(max,(1-(lambda2/temp)),0),p,p)
    Z[[k]][which(tempsum==0)] = 0
    diag(Z[[k]]) = diag(A[[k]])
}
    return(Z)
}

soft <-
function(a,lam,penalize.diagonal){ # if last argument is FALSE, soft-threshold a matrix but don't penalize the diagonal
  out <- sign(a)*pmax(0, abs(a)-lam)
  if(!penalize.diagonal) {diag(out) <- diag(a)}
  return(out)
}
