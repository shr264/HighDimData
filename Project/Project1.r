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
library(compiler)

data(example.data)
str(example.data)

setwd("/Users/syedrahman/Documents/Spring2015/HighDimData/Project")

falsepos <- function(adj1hat,adj1){
    return((sum((upper.tri(adj1hat,diag=FALSE)*adj1hat -upper.tri(adj1,diag=FALSE)*adj1)>0))/(sum(upper.tri(adj1,diag=FALSE)*adj1==0)-(1/2)*(p)*(p+1)))}
falseneg <- function(adjmatrixhat,adjmatrix){
    return(sum((upper.tri(adjmatrix,diag=FALSE)*adjmatrix-upper.tri(adjmatrixhat,diag=FALSE)*adjmatrixhat>0))/(sum(upper.tri(adjmatrix,diag=FALSE)*adjmatrix>0)))}

frobnormloss <- function(omegahat,Omega1){
    out = (norm((omegahat-Omega1), type = c("F"))^2)/(norm((Omega1), type = c("F"))^2)
    return(out)
}


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


p = 25
n = 100
replicate <- function(p,n,method,K){
    set.seed(12345)
    (avgfrobloss=0)
    (avgfp = 0)
    (avgfn = 0)
    for(k in 1:K){
Omega1 = round(nearestneighbor(p),10)
Sigma1 = chol2inv(chol(Omega1))
adj1 = Omega1!=0
g1 = graph.adjacency(adj1, mode=c("max"), diag=FALSE)
pdf("Omega1-f.pdf")
plot(g1)
dev.off()
Omega2 = round(nearestneighbor(p),10)
Sigma2 = chol2inv(chol(Omega2))
adj2 = Omega2!=0
g2 = graph.adjacency(adj2, mode=c("max"), diag=FALSE)
pdf("Omega2-f.pdf")
plot(g2)
dev.off()
Omega3 = round(nearestneighbor(p),10)
Sigma3 = chol2inv(chol(Omega3))
adj3 = Omega3!=0
g3 = graph.adjacency(adj3, mode=c("max"), diag=FALSE)
pdf("Omega3-f.pdf")
plot(g3)
dev.off()
mu = rep(0,p)
Y1 = mvrnorm(n, mu, Sigma1, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y1 = scale(Y1, center = TRUE, scale = TRUE)
Y2 = mvrnorm(n, mu, Sigma2, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y2 = scale(Y2, center = TRUE, scale = TRUE)
Y3 = mvrnorm(n, mu, Sigma3, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)
Y3 = scale(Y3, center = TRUE, scale = TRUE)
data = list(Y1,Y2,Y3)
if (method==1){
    fgl = JGL(data,penalty="group",lambda1=0.07,lambda2=0.05,return.whole.theta=TRUE)}
else if (method==2){
    fgl = JGL(data,penalty="group",lambda1=0.03,lambda2=0.25,return.whole.theta=TRUE)}
else if (method==3){
    fgl = JGL(data,penalty="fused",lambda1=0.05,lambda2=0.05,return.whole.theta=TRUE)}
else {
    fgl = JGL(data,penalty="fused",lambda1=0.1,lambda2=0.1,return.whole.theta=TRUE)}
str(fgl)
print(fgl)
subnetworks(fgl$theta)
Om1hat = fgl$theta[[1]]
adj1hat = Om1hat!=0
g1hat = graph.adjacency(adj1hat, mode=c("max"), diag=FALSE)
pdf("Omega1hat-f.pdf")
plot(g1hat)
dev.off()
Om2hat = fgl$theta[[2]]
adj2hat = Om2hat!=0
g2hat = graph.adjacency(adj2hat, mode=c("max"), diag=FALSE)
pdf("Omega2hat-f.pdf")
plot(g2hat)
dev.off()
Om3hat = fgl$theta[[3]]
adj3hat = Om3hat!=0
g3hat = graph.adjacency(adj3hat, mode=c("max"), diag=FALSE)
pdf("Omega3hat-f.pdf")
plot(g3hat)
dev.off()
(avgfrobloss[k] = mean(frobnormloss(Om1hat,Omega1),frobnormloss(Om2hat,Omega2),frobnormloss(Om3hat,Omega3)))
(avgfp[k] = mean(falsepos(adj1hat,adj1),falsepos(adj2hat,adj2),falsepos(adj3hat,adj3)))
(avgfn[k] = mean(falseneg(adj1hat,adj1),falseneg(adj2hat,adj2),falseneg(adj3hat,adj3)))
}
return(list(frob = mean(avgfrobloss),fp = mean(avgfp), fn = mean(avgfn)))
}
qreplicate(p,n,4,1)
