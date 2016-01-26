# Construct the covariance matrix for the chain network.

set.seed(12345)

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

p = 25
Omega1 = chain(p)
Sigma1 = solve(Omega1) 

dim  = p
mu = rep(0,dim)
n = 150
Y = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y = scale(Y, center = TRUE, scale = TRUE)
S = (1/n)*t(Y)%*%Y

#x = huge(Y,lambda = 0.3,method = 'mb')
#plot(x)

(pdfrobeniusnorm = 0)
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
    (betaold = matrix(1,dim(X)[2],1))
    
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
pdomegahat = makesymmetric(omegahat)
while(min(eigen(pdomegahat)$value)<0){
    pdomegahat = boostdiagonal(pdomegahat)}
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(pdfrobeniusnorm[k] = (norm((pdomegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(frobeniusnorm[k] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[k] = (sum((upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat-upper.tri(adjmatrix,diag=FALSE)*adjmatrix)>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix==0)-(1/2)*(p)*(p+1)))
(fn[k] = (sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))
}

plot(6*(0:19),pdfrobeniusnorm,type="l",col='blue',xlab=expression(lambda),ylab="Frobenius Norm",main="Frobenius Norm of Difference of Estimate to True Value")
plot(6*(0:19),frobeniusnorm,type="l",col='green',xlab=expression(lambda),ylab="F",main="F")
plot(6*(0:19),fp,type="l",col='red',xlab=expression(lambda),ylab="FP/FN",main="FP/FN")
lines(6*(0:19),fn,col='blue')
legend(80,1.0,c("FP","FN"),lty=c(1,1), lwd=c(2.5,2.5), col=c("red","blue"))

(omegahat = diag(p))
(allnodes = seq(1:p))
for(node in 1:p){
    (y = Y[,node])
    (allothernodes = setdiff(allnodes,node))
    (X = Y[,allothernodes])
    (betaold = matrix(0,dim(X)[2],1))
    
    stepsize = 0.0001
    lambda = 60
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
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
#density
(sum(adjmatrix)-p)/(choose(p,2))

#density2
(sum(adjmatrix))/p^2

g1 = graph.adjacency(adjmatrix, mode=c("max"), diag=FALSE)
plot(g1,main="Graphical Model based on True Concentration Matrix")

g2 = graph.adjacency(adjmatrixhat, mode=c("max"), diag=FALSE)
plot(g2,main="Graphical Model based on Estimated Concentration Matrix")

                                        #replications
(pdfrobeniusnorm = 0)
(frobeniusnorm = 0)
(fp = 0)
(fn = 0)
for (K in 1:10){
Omega1 = chain(p)
Sigma1 = solve(Omega1)

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
    lambda = 60
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
(adjmatrixhat = (abs(pdomegahat)>10^(-5)))
(zero = medgeset(adjmatrixhat))
if(dim(zero)[1]>0){
    (omegahat = glasso(S,0,zero=zero)$wi)}
else{glasso(S,0)$wi}
(adjmatrixhat = (abs(omegahat)>10^(-5)))
(pdfrobeniusnorm[K] = (norm((pdomegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(frobeniusnorm[K] = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2))
(fp[K] = (sum((upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat-upper.tri(adjmatrix,diag=FALSE)*adjmatrix)>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix==0)-(1/2)*(p)*(p+1)))
(fn[K] = (sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))     
}
(PDFrob = mean(pdfrobeniusnorm))
(Frob = mean(frobeniusnorm))
(FP = mean(fp))
(FN = mean(fn))
det(omegahat)



#this symmetrizes omegahat according to max element

