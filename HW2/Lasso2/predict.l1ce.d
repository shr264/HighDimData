.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: predict.l1ce.d,v 1.1 1998/09/18 07:27:59 bturlach Exp $
.\" 
.\" This library is free software; you can redistribute it and/or
.\" modify it under the terms of the GNU Library General Public
.\" License as published by the Free Software Foundation; either
.\" version 2 of the License, or (at your option) any later version.
.\" 
.\" This library is distributed in the hope that it will be useful,
.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
.\" Library General Public License for more details.
.\" 
.\" You should have received a copy of the GNU Library General Public
.\" License along with this library; if not, write to the Free Software
.\" Foundation, Inc., 59 Temple Place, Suite 330, Boston, 
.\" MA 02111-1307 USA
.BG
.FN predict.l1ce
.TL
Use `predict()' on a `l1ce' object
.DN
Extracts the fitted values from a `l1ce' object and returns a matrix of
predictions.
.CS
predict.l1ce(object, newdata)
.RA
.AG object
a fitted `l1ce' object.
.OA
.AG newdata
a data frame containing the values at which predictions are required.
This argument can be missing, in which case predictions are made at
the same values used to compute the object.  
Only those predictors referred to in the right side of the formula in
object need be present by name in `newdata'. 
.RT
a vector of predictions.
.DT
This function is a method for the generic function predict
for  class  "l1ce".   It can be invoked by calling predict
for an object of the appropriate  class,  or  directly  by
calling  predict.l1ce  regardless  of the class of the object.
.SH WARNING
`predict' can produce incorrect predictions when the `newdata' 
argument is used if the formula in `object' involves 
.I "data-dependent"
transformations, such as `poly(Age, 3)' or `sqrt(Age - min(Age))'. 
.WR
