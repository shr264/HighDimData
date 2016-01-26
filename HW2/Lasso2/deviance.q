###  Copyright (C) 1998, 1999
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
deviance.l1ce <- function(object, ...){
  if(is.null(w <- object$weights)){
    sum(object$residuals^2)
  }else{
    sum(w * object$residuals^2)
  }
}

deviance.l1celist <- function(object, ...){
  
  resid <- do.call("cbind", lapply(object, "[[", "residuals"))
  weights <- attr(object, "weights")
  if(is.null(weights)){
    apply(resid^2,2,sum)
  }else{
    apply(weights*resid^2,2,sum)
  }
}

deviance.gl1ce <- function(object, ...) {
  object$deviance
}


