###  Copyright (C) 1999
###  Justin Lokhorst <jlokhors@stats.adelaide.edu.au>
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
gl1ce <- function(formula, data = sys.parent(), weights, subset, na.action,
                  family = gaussian, control = glm.control(...),
                  sweep.out = ~ 1,
                  x = F, y = T,
                  contrasts = NULL,
                  standardize = T, 
                  guess.constrained.coefficients = double(p),
                  bound = 0.5,...)
{
  call <- match.call()
  m <- match.call(expand = F)

  m$sweep.out <- m$x <- m$y <- m$contrasts <- m$standardize <-
    m$guess.constrained.coefficients <- m$trace <- m$bound <-
      m$family <- m$control <- m$... <- NULL
  
  something.to.sweep.out <- !is.null(sweep.out)

  if(something.to.sweep.out) {
    m$formula <- merge.formula(formula, sweep.out)
  }

  m[[1]] <- as.name("model.frame")
  if(!missing(data) && !is.data.frame(data)) {
    m$data <- data <- as.data.frame(data)
    warning(paste(deparse(substitute(data)), "is not a dataframe"))
  }

  m <- eval(m, data)
  weights <- model.extract(m, weights)
  Y <- model.extract(m, response)
  Terms <- terms(formula, data = data)
  X <- model.matrix(Terms, m, contrasts)
  X.names <- dimnames(X)[[2]]
  maxit <- control$maxit
  epsilon <- control$epsilon
  trace <- control$trace
  offset <- model.extract(m,offset)
  Y.to.C <- Y

  family <- as.family(family)
  link <- family$link
  inv.link <- family$inverse
  deriv.link <- family$deriv
  variance.function <- family$variance    
  
  if(!length(weights))
    weights <- rep(1, length(Y.to.C))
  else if(any(weights < 0))
    stop("Negative weights not allowed")

  if(any(weights == 0)) {
    stop("The subset argument should be used for observations that
             need to be excluded")
  }
    
  if(family$family[[1]] == "Binomial") {
    mu <- (Y.to.C + (1/2))/(weights + 1)
  }
  else {
    mu <- (Y.to.C + mean(Y))/2
  }
  

  eta <- link(mu) - offset

  j <- 0 
  
  if(something.to.sweep.out) {
    X.sweep.out <- model.matrix(terms(sweep.out, data = data), m, 
                                contrasts)
    X.sweep.out.names <- dimnames(X.sweep.out)[[2]]
    name.matches <- match(X.sweep.out.names, X.names)
    all.matched <- !any(is.na(name.matches))

    if(!all.matched)
      warning("Variables in \"sweep.out\" are not a subset of
                   variables in \"formula\"")
    
    name.matches <- name.matches[!is.na(name.matches)]
    if(some.matched <- length(name.matches)) {
      X.to.C <- X[,  - name.matches, drop = F]        
      X.names <- X.names[ - name.matches]
      if(length(X.to.C) == 0)
        stop("Do you really want to sweep out all the variables?")
    }else{
      X.to.C <- X
    }
  }else {
    X.to.C <- X     
  }
  
  n <- nrow(X.to.C)
  p <- ncol(X.to.C)

  if(length(guess.constrained.coefficients) != p)
    stop("invalid argument for \"guess.constrained.coefficients\"")

  keep <- c("coefficients", "fitted.values", "residuals", "success", 
            "Lagrangian", "bound")
  check <- 1

  if(something.to.sweep.out) {
    check.vector <- rep(0, ncol(X))
  }
  else {
    check.vector <- rep(0, ncol(X.to.C))
  }

  continue <- T

  while(continue) {

    M <- deriv.link(mu)
    Y.to.C <- eta + (Y - mu) * M
    W <- sqrt(weights/(variance.function(mu) * (M^2)))

    X.to.C.w <- X.to.C * W
    

    Y.to.C <- Y.to.C * W    

    if(something.to.sweep.out) {
      X.sweep.out.w <- X.sweep.out * W

      X.so.qr <- qr(X.sweep.out.w)
      X.so.coefficients <- qr.coef(X.so.qr, Y.to.C)   #beta
      X.to.C.w <- qr.resid(X.so.qr, X.to.C.w) #Z*
      Y.to.C <- qr.resid(X.so.qr, Y.to.C)     #Y*
    }

    if(standardize) {
      X.to.C.stds <- sqrt(apply(X.to.C.w, 2, var))
      if(any(X.to.C.stds < sqrt(.Machine$double.eps)))
        stop("Matrix build from transformed variables has
               a constant column")
      X.to.C.w <- sweep(X.to.C.w, 2, X.to.C.stds, "/")
    }
    
    check.vector.old <- check.vector        

    fit <- .C("lasso",
              X = as.double(X.to.C.w),
              n = as.integer(n),
              p = as.integer(p),
              bound = as.double(bound),
              coefficients = as.double(guess.constrained.coefficients),
              Y = as.double(Y.to.C),
              fitted.values = double(n),
              residuals = double(n),
              Lagrangian = double(1),
              success = integer(1),
              trace = as.logical(trace),
              assub = as.logical(F))[keep]

    if(fit$success < 0) {
      stop("Uups, something went wrong in the C-routine")
    }
    else {
      fit$success <- NULL
    }

    guess.constrained.coefficients <- gamma <- fit$coefficients     
    
    if(something.to.sweep.out) {
      check.vector <- c(X.so.coefficients, gamma)
    }
    else {
      check.vector <- gamma
    }

    eta <- as.vector((X.to.C.w %*% gamma + X.sweep.out.w %*% 
             X.so.coefficients)/W)
    mu <- inv.link(eta + offset)    ###Our new values of mu and eta

    check <- (sum((check.vector - check.vector.old)^2))/(sum(check.vector^2))
    j <- j + 1

    continue <- (j < maxit) && (check > epsilon)

  }

  if(j == maxit) {
    warning("Maximal number of iterations reached.")
  }

  fit$iter <- j
  deviance <- family$deviance(mu, Y, weights)
  fit$linear.predictors <- eta
  
  fit$xtx <- crossprod(X.to.C)
  fit$xtr <- crossprod(X.to.C,fit$residuals)
  fit$constrained.coefficients <- fit$coefficients
  names(fit$coefficients) <- names(fit$constrained.coefficients) <- 
    dimnames(X.to.C)[[2]]
  if(standardize) {
    fit$X.stds <- X.to.C.stds
    fit$coefficients <- fit$coefficients/X.to.C.stds
  }
  if(something.to.sweep.out) {
    X.so.X <- qr.coef(X.so.qr, X.to.C)
    X.so.Y.fit <- qr.fitted(X.so.qr, Y.to.C)
    fit$fitted.values <- fit$fitted.values + X.so.Y.fit
    X.so.coefficients <- X.so.coefficients - X.so.X %*% fit$coefficients
    tmp <- fit$coefficients
    fit$coefficients <- rep(0, ncol(X))
    names(fit$coefficients) <- dimnames(X)[[2]]
    fit$coefficients[X.names] <- tmp
    names(X.so.coefficients) <- X.sweep.out.names
    ind <- names(fit$coefficients[name.matches])
    fit$coefficients[name.matches] <- X.so.coeff[ind]
    fit$sweep.out <- list(sweep.out = sweep.out, X.sweep.out.names
                          = X.sweep.out.names, name.matches = name.matches, 
                          all.matched = all.matched, some.matched = some.matched, 
                          X.so.rtr.inv = qr.rtr.inv(X.so.qr), X.so.X = X.so.X)
  }
  fit$weights <- W
  fit$prior.weights <- weights
  fit$terms <- Terms
  fit$call <- call
  fit$contrasts <- attr(X, "contrasts")
  fit$assign <- attr(X, "assign")
  fit$family <- family
  fit$deviance <- deviance
  if(x)
    fit$x <- X
  if(y) fit$y <- Y
  ##    if(!absolute.t)
  ##      fit$relative.bound <- relative.bound
  structure(fit, class = c("gl1ce", "l1ce"), na.message = attr(m, "na.message"))
}


