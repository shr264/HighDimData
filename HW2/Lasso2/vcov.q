###  Copyright (C) 1998
###  Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
###  Bill Venables <wvenable@stats.adelaide.edu.au>
###
###  This library is free software; you can redistribute it and/or
###  modify it under the terms of the GNU Library General Public
###  License as published by the Free Software Foundation; either
###  version 2 of the License, or (at your option) any later version.
###
###  This library is distributed in the hope that it will be useful,
###  but WITHOUT ANY WARRANTY; without even the implied warranty of
###  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
###  Library General Public License for more details.
###
###  You should have received a copy of the GNU Library General Public
###  License along with this library; if not, write to the Free Software
###  Foundation, Inc., 59 Temple Place, Suite 330, Boston, 
###  MA 02111-1307 USA
vcov <- function(object, ...)
  UseMethod("vcov")

vcov.l1ce <- function(object,
                      type = c("OPT", "Tibshirani"),
                      gen.inverse.diag = 0)
{
  type <- match.arg(type)

  xtx <- object$xtx
  cov.mat <- switch(type,
                    OPT = opt.covmat(xtx, object$xtr, object$bound,
                      object$Lagrangian), 
                    Tibshirani = tib.covmat(xtx, gen.inverse.diag,
                      object$constrained.coefficients, object$Lagrangian)
                    )
  cov.mat <- solve(cov.mat)
  df <- tr(junk<-cov.mat%*%xtx)
  cov.mat <- junk%*%cov.mat

  if(!is.null(object$X.stds)){
    X.stds <- as.vector(object$X.stds)
    p <- length(X.stds)
    cov.mat <- cov.mat/X.stds
    cov.mat <- cov.mat/X.stds[rep(1:p,rep(p,p))]
  }

  if(!is.null(object$sweep.out)){
    if(!object$sweep.out$all.matched)
      warning("Variables in sweep.out were not a subset of variables in model.  Results could be meaningless.")

    psi1 <- object$sweep.out$X.so.rtr.inv
    psi2 <- cov.mat
    psi12 <- object$sweep.out$X.so.X %*% psi2
    psi1 <- psi1 + psi12 %*% t(object$sweep.out$X.so.X)

    p1 <- nrow(psi1)
    p2 <- nrow(psi2)
    cov.mat <- matrix(0,p1+p2,p1+p2)
    cov.mat[1:p1,1:p1] <- psi1
    cov.mat[(p1+1):(p1+p2),(p1+1):(p1+p2)] <- psi2
    cov.mat[(p1+1):(p1+p2),1:p1] <- -t(psi12)
    cov.mat[1:p1,(p1+1):(p1+p2)] <- -psi12
    
    names1 <- do.call("c",dimnames(object$sweep.out$X.so.X))
    dimnames(cov.mat) <- list(names1, names1)
    names2 <- names(object$coefficients)
    cov.mat <- cov.mat[names2,names2]
    df <- df+p1
  }
  list(cov.unscaled=cov.mat,
       df = c(df,length(object$fitted)-df))
}

vcov.l1celist <- function(object,
                          type = c("OPT", "Tibshirani"),
                          gen.inverse.diag = 0)
{
  type <- match.arg(type)

  res <- list()
  for(i in 1:length(object))
    res[[i]] <- vcov(object[[i]],type,gen.inverse.diag)
  res
}

opt.covmat <- function(xtx, xtr, bound, Lagrangian)
{
  if( bound == 0 )
    stop("\"bound\" must be unequal zero when calculating covariance matrix")
  if( abs(Lagrangian) < sqrt(.Machine$double.eps) ){
    xtx
  }else{
    xtx + xtr%*%t(xtr)/(bound*Lagrangian)
  }
}

tib.covmat <- function(xtx, gen.inverse.diag, beta, Lagrangian)
{
  ind <- abs(beta) > sqrt(.Machine$double.eps)
  beta[ind]  <- 1/abs(beta[ind])
  beta[!ind] <- gen.inverse.diag

  xtx + Lagrangian*diag(beta)
}
    
