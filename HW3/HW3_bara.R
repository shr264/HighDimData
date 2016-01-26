
library(igraph)
library(MASS)
library(matrixcalc)
set.seed(12345)
p = 25
OMEGA = 0
# Here I generate the graph of scale-free network
# thats created by that barabasi algorithm

c <- rep(1,25)
c[c(21,22,23,24)] <- 2
c[25] <- 3

sf.graph <- barabasi.game(25,power=1,out.seq=c,directed=FALSE)
plot(sf.graph)


# Then I get a proper adjacency matrix out of it
sf.adj <- get.adjacency(sf.graph)
sf.adj <- ifelse(as.matrix(sf.adj)==1,1,0)
diag(sf.adj) <- 1

# Here I put random values in place of '1' in the matrix
m <- sf.adj[sf.adj==1]
sf.adj[sf.adj==1] <- runif(length(m),1,2)

# Here I symmetrize the matrix
sf.adj <- sf.adj + t(sf.adj)
diag(sf.adj) <- 1

# That your OMEGA
OMEGA <- sf.adj

#Here is where you try to make it positive definite
is.positive.definite(OMEGA)

d <- max(eigen(OMEGA)$value)
while(min(eigen(OMEGA)$value) <= 0){
    OMEGA <- OMEGA + diag(d,nrow(OMEGA))
d <- max(eigen(OMEGA)$value)}


#Thats the SIGMA, also checking whether its pos def and symmetric, to be sure
SIGMA <- chol2inv(OMEGA)
SIGMA - t(SIGMA)

Omega1 = cov2cor(OMEGA)

(adjmatrix = (abs(Omega1)>10^(-5)))

#density
(sum(adjmatrix)-p)/(choose(p,2))

#density2
(sum(adjmatrix))/p^2

g1 = graph.adjacency(adjmatrix, mode=c("max"), diag=FALSE)
plot(g1,main="Graphical Model based on True Concentration Matrix")


dim  = 25
mu = rep(0,dim)
n = 130
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
p = dim
Y = scale(Y, center = TRUE, scale = TRUE)

(frobeniusnorm = 0)
(fp = 0)
(fn = 0)


for(k in 1:20){
(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 6*(k-1)
    iter = 1
    maxIter = 10000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))
(frobeniusnorm[k] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[k] = falsepos(adjmatrix,adjmatrixhat))
(fn[k] = falseneg(adjmatrix,adjmatrixhat))
}


plot(6*(0:19),frobeniusnorm,type="l",col='blue',xlab=expression(lambda),ylab="Frobenius Norm",main="Frobenius Norm of Difference of Estimate to True Value")
plot(6*(0:19),fp,type="l",col='blue',xlab=expression(lambda),ylab="False Positive",main="False Positives")
plot(6*(0:19),fn,type="l",col='blue',xlab=expression(lambda),ylab="False Negative",main="False Negatives")



(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 12
    iter = 1
    maxIter = 100000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))

#density
(sum(adjmatrix)-p)/(choose(p,2))

#density2
(sum(adjmatrix))/p^2

g2 = graph.adjacency(adjmatrixhat, mode=c("max"), diag=FALSE)
plot(g2,main="Graphical Model based on Estimated Concentration Matrix")


                                        #replications
(pdfrobeniusnorm = 0)
(frobeniusnorm = 0)
(fp = 0)
(fn = 0)
for (K in 1:10){
p = 25
# Here I generate the graph of scale-free network
# thats created by that barabasi algorithm
p = 25
OMEGA = 0
# Here I generate the graph of scale-free network
# thats created by that barabasi algorithm

c <- rep(1,25)
c[c(21,22,23,24)] <- 2
c[25] <- 3

# Then I get a proper adjacency matrix out of it
sf.adj <- get.adjacency(sf.graph)
sf.adj <- ifelse(as.matrix(sf.adj)==1,1,0)
diag(sf.adj) <- 1

# Here I put random values in place of '1' in the matrix
m <- sf.adj[sf.adj==1]
sf.adj[sf.adj==1] <- runif(length(m),1,2)

# Here I symmetrize the matrix
sf.adj <- sf.adj + t(sf.adj)
diag(sf.adj) <- 1

# That your OMEGA
OMEGA <- sf.adj

#Here is where you try to make it positive definite
is.positive.definite(OMEGA)

d <- max(eigen(OMEGA)$value)
while(min(eigen(OMEGA)$value) <= 0){
    OMEGA <- OMEGA + diag(d,nrow(OMEGA))
d <- max(eigen(OMEGA)$value)}


#Thats the SIGMA, also checking whether its pos def and symmetric, to be sure
SIGMA <- chol2inv(OMEGA)


Omega1 = cov2cor(Omega1)

dim  = p
mu = rep(0,dim)
n = 130
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y = scale(Y, center = TRUE, scale = TRUE)

(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 21
    iter = 1
    maxIter = 10000
    delta = 10^(-5)
    eps = 1
    while(iter<maxIter && eps>delta){
        (betanew = betaold - stepsize*grad(y,X,betaold,lambda))
        (betanew = softthresh(betanew,stepsize*lambda))
        (eps = norm(betanew - betaold))
        (betaold = betanew)
        (iter = iter + 1)
        ###(stepsize = stepsize/sqrt(iter))  #using diminishing stepsize
        ###(stepsize = stepsize) #using fixed stepsize
    }
    omegahat[node,allothernodes] = betanew
}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(adjmatrix = (abs(Omega1)>10^(-5)))
pdomegahat = makesymmetric(omegahat)
while(min(eigen(pdomegahat)$value)<0){
    pdomegahat = boostdiagonal(pdomegahat)}
(pdfrobeniusnorm[K] = (norm((pdomegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(frobeniusnorm[K] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[K] = falsepos(adjmatrix,adjmatrixhat))
(fn[K] = falseneg(adjmatrix,adjmatrixhat))    
}
(PDFrob = mean(pdfrobeniusnorm))
(Frob = mean(frobeniusnorm))
(FP = mean(fp))
(FN = mean(fn))
