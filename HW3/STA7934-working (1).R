# Construct the covariance matrix for the chain network.
p <- 25
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
det(Omega1)


# Construct the covariance matrix for the nearest neighbor network. 
# We create links for the 5  nearest neighbors.

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
nearest.neighbors <- t(apply(dist,1,order)[2:6, ])

Omega2 <- matrix(rep(0,p*p),p,p)
for (i in 1:p) {
    Omega2[i, nearest.neighbors[i,]] <- dist[i, nearest.neighbors[i, ]]
}
Omega2 <- Omega2 + diag(p)
det(Omega2)
