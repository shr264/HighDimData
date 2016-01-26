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
is.formula <- function(f){
  inherits(f, "formula")
}

merge.formula <- function(f1,f2){

  if(!(is.formula(f1) && length(f1) == 3))
    stop("First argument is invalid")

  if(!is.formula(f2))
    stop("Second argument is invalid")

  str <- paste(c(deparse(f1[[2]]), "~",
                 deparse(f1[[3]]), "+", 
                 deparse(f2[[length(f2)]])), collapse = "")
  as.formula(str)

}

