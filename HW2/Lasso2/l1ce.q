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
l1ce <- function(formula, data = sys.parent(), weights, subset, na.action,
                 sweep.out = ~ 1,
		 x = F, y = F, contrasts = NULL,
                 standardize = T,
		 trace = F,
                 guess.constrained.coefficients = double(p),
		 bound = 0.5,
                 absolute.t = F) {

  call <- match.call()
  m <- match.call(expand = F)
  m$sweep.out <- m$x <- m$y <- m$contrasts <-
    m$standardize <- m$guess.constrained.coefficients <- m$trace <- 
      m$bound <- m$absolute.t <- NULL  
  
  something.to.sweep.out <- !is.null(sweep.out)
  if(something.to.sweep.out){
    m$formula <- merge.formula(formula,sweep.out)
  }
  m[[1]] <- as.name("model.frame")

  if(!missing(data) && !is.data.frame(data)){
    m$data <- data <- as.data.frame(data)
    warning(paste(deparse(substitute(data)),
                  "is not a dataframe"))
  }

  m <- eval(m, data)
  weights <- model.extract(m, weights)
  Y <- model.extract(m, response)
  Terms <- terms(formula, data=data)
  X <- model.matrix(Terms, m, contrasts)
  X.names <- dimnames(X)[[2]]

  X.to.C <- X
  Y.to.C <- Y

  if(weighted <- length(weights)) { 
    Y.to.C <- Y.to.C * (w <- sqrt(weights))
    X.to.C <- X.to.C * w
  }

  if(something.to.sweep.out){
    sweep.out[[3]] <- sweep.out[[2]]
    sweep.out[[2]] <- formula[[2]]
    X.sweep.out <- model.matrix(terms(sweep.out, data=data),
                                m, contrasts)
    X.sweep.out.names <- dimnames(X.sweep.out)[[2]]
    if(weighted){
      X.sweep.out <- X.sweep.out * w
    }

    name.matches<- match(X.sweep.out.names,X.names)
    all.matched <- !any(is.na(name.matches))
    if(!all.matched)
      warning("Variables in \"sweep.out\" are not a subset of variables in \"formula\"")

    name.matches <- name.matches[!is.na(name.matches)]
    if(some.matched <- length(name.matches)){
      X.to.C <- X.to.C[,-name.matches,drop=F]
      X.names <- X.names[-name.matches]
      if( length(X.to.C) == 0 )
        stop("Do you really want to sweep out all the variables?")
    }

    X.so.qr <- qr(X.sweep.out)
    if( X.so.qr$rank != ncol(X.sweep.out) )
      warning("Matrix build from variables in \"sweep.out\" is rank deficient")
    
    X.so.coefficients <- qr.coef(X.so.qr,Y.to.C)
    X.so.X  <- qr.coef(X.so.qr,X.to.C)
    X.so.Y.fit <- qr.fitted(X.so.qr,Y.to.C)
    X.to.C  <- qr.resid(X.so.qr,X.to.C)
    Y.to.C  <- qr.resid(X.so.qr,Y.to.C)
  }
  
  if(standardize){
    X.to.C.stds<-sqrt(apply(X.to.C,2,var))
    if( any(X.to.C.stds < sqrt(.Machine$double.eps)) )
      stop("Matrix build from transformed variables has a constant column") 

    X.to.C <- sweep(X.to.C,2,X.to.C.stds,"/")
  }
   
  if(!absolute.t){
    X.to.C.qr <- qr(X.to.C)
    if( X.to.C.qr$rank != ncol(X.to.C) ){
      warning("Matrix build from transformed variables rank deficient")
    }else if( X.to.C.qr$rank == 0 ){
      stop("Matrix build from transformed variables is null matrix")
    }
    t0 <- sum(abs(qr.coef(X.to.C.qr,Y.to.C)))
    if( any(bound > 1) ){
      stop("\"bound\"(s) must be between 0 and 1 if absolute.t=F")
    }
    bound <- (relative.bound <- bound)*t0
  }
  if( any(bound < 0) )
    stop("\"bound\"(s) must be non negative")

  n <- nrow(X.to.C)
  p <- ncol(X.to.C)
  if( length(guess.constrained.coefficients) != p )
    stop("invalid argument for \"guess.constrained.coefficients\"")

  keep <- c("coefficients", "fitted.values", "residuals", "success",
            "Lagrangian", "bound")

  if( 1 == (num.bound <- length(bound)) ){

    fit <- .C("lasso",
              X=as.double(X.to.C), n=as.integer(n), p=as.integer(p),
              bound=as.double(bound),
              coefficients=as.double(guess.constrained.coefficients),
              Y=as.double(Y.to.C),
              fitted.values=double(n), residuals=double(n),
              Lagrangian=double(1),
              success=integer(1), 
              trace=as.logical(trace), 
              assub=as.logical(F))[keep]
    if( fit$success < 0 ){
      stop("Uups, something went wrong in the C-routine")
    }else{
      fit$success <- NULL
    }

    fit$xtx <- crossprod(X.to.C)
    fit$xtr <- crossprod(X.to.C,fit$residuals)
    fit$constrained.coefficients <- fit$coefficients
    names(fit$coefficients) <- names(fit$constrained.coefficients) <-
      dimnames(X.to.C)[[2]] 

    if(standardize){
      fit$X.stds <- X.to.C.stds
      fit$coefficients   <- fit$coefficients / X.to.C.stds
    }

    if(something.to.sweep.out){
      fit$fitted.values <- fit$fitted.values + X.so.Y.fit
      X.so.coefficients <- X.so.coefficients - X.so.X %*% fit$coefficients
    
      tmp <- fit$coefficients
      fit$coefficients <- rep(0,ncol(X))
      names(fit$coefficients) <- dimnames(X)[[2]]
      fit$coefficients[X.names] <- tmp
      names(X.so.coefficients) <- X.sweep.out.names
      ind <- names(fit$coefficients[name.matches])
      fit$coefficients[name.matches] <- X.so.coeff[ind]

      fit$sweep.out <- list(sweep.out = sweep.out,
                            X.sweep.out.names = X.sweep.out.names,
                            name.matches = name.matches,
                            all.matched = all.matched,
                            some.matched = some.matched,
                            X.so.rtr.inv = qr.rtr.inv(X.so.qr),
                            X.so.X = X.so.X)
    }

    if(weighted){
      fit$weights <- weights
      if( any(weights==0) ){
        fit$fitted.values <- X %*% fit$coefficients
        fit$residuals <- Y - fit$fitted.values
      }else{
        fit$fitted.values <- fit$fitted.values / w
        fit$residuals <- fit$residuals / w
      }
    }

    fit$terms <- Terms
    fit$call <- call
    fit$contrasts <- attr(X, "contrasts")
    fit$assign <- attr(X, "assign")
    if(x)
      fit$x <- X
    if(y)
      fit$y <- Y
    if(!absolute.t)
      fit$relative.bound <- relative.bound
    structure(fit, class = "l1ce", 
              na.message = attr(m, "na.message"))
  }else{

    ordered.bound <- order(bound)
    guess.constraint.coefficients <-
      rep(guess.constrained.coefficients,num.bound)
    
    res <- .C("mult_lasso",
              X=as.double(X.to.C), n=as.integer(n), p=as.integer(p),
              bound=as.double(bound[ordered.bound]),
              l=as.integer(num.bound),
              coefficients=as.double(guess.constraint.coefficients),
              Y=as.double(Y.to.C),
              fitted.values=double(n*num.bound),
              residuals=double(n*num.bound),
              Lagrangian=double(num.bound),
              success=integer(1), 
              trace=as.logical(trace))[keep]
    if( res$success < 0 ){
      stop("Uups, something went wrong in the C-routine")
    }else{
      res$success <- NULL
    }

    total.fit <- list()
    ind1 <- 1:n 
    ind2 <- 1:p 
    for(i in 1:num.bound){

      fit <- list()
      fit$constrained.coefficients <- fit$coefficients <-
        res$coefficients[ind2]
      names(fit$coefficients) <- names(fit$constrained.coefficients) <-
        dimnames(X.to.C)[[2]]
      fit$fitted.values <- res$fitted.values[ind1]
      fit$residuals <- res$residuals[ind1]
      fit$bound <- res$bound[i]
      fit$Lagrangian <- res$Lagrangian[i]
      fit$xtr <- crossprod(X.to.C,fit$residuals)

      if(standardize){
        fit$coefficients   <- fit$coefficients / X.to.C.stds
      }

      if(something.to.sweep.out){
        fit$fitted.values <- fit$fitted.values + X.so.Y.fit
        X.so.coeff <- X.so.coefficients - X.so.X %*% fit$coefficients
    
        tmp <- fit$coefficients
        fit$coefficients <- rep(0,ncol(X))
        names(fit$coefficients) <- dimnames(X)[[2]]
        fit$coefficients[X.names] <- tmp
        names(X.so.coeff) <- X.sweep.out.names
        ind <- names(fit$coefficients[name.matches])
        fit$coefficients[name.matches] <- X.so.coeff[ind]
      }

      if(weighted){
        if( any(weights==0) ){
          fit$fitted.values <- X %*% fit$coefficients
          fit$residuals <- Y - fit$fitted.values
        }else{
          fit$fitted.values <- fit$fitted.values / w
          fit$residuals <- fit$residuals / w
        }
      }

      if(!absolute.t)
        fit$relative.bound <- relative.bound[ordered.bound[i]]
                                                       
      total.fit[[ordered.bound[i]]] <- fit
      ind1 <- ind1 + n
      ind2 <- ind2 + p
    }

    if(standardize){
      attr(total.fit, "X.stds")
    }
    if(something.to.sweep.out){
      attr(total.fit, "sweep.out") <-
        list(sweep.out = sweep.out,
             X.sweep.out.names = X.sweep.out.names,
             name.matches = name.matches,
             all.matched = all.matched,
             some.matched = some.matched,
             X.so.rtr.inv = qr.rtr.inv(X.so.qr),
             X.so.X = X.so.X)
    }
    attr(total.fit, "xtx") <- crossprod(X.to.C)
    if(weighted){
      attr(total.fit, "weights") <- weights
    }
    attr(total.fit, "terms") <- Terms
    attr(total.fit, "call") <- call
    attr(total.fit, "contrasts") <- attr(X, "contrasts")
    attr(total.fit, "assign") <- attr(X, "assign")
    if(x)
      attr(total.fit, "x") <- X
    if(y)
      attr(total.fit, "y") <- Y
    structure(total.fit, class = "l1celist", 
              na.message = attr(m, "na.message"))

  }
}
