.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: vcov.l1celist.d,v 1.2 1999/12/01 05:11:59 bturlach Exp $
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
.FN vcov.l1celist
.TL
Use `vcov()' on a `l1celist' object.
.CS
vcov(object, type = c("OPT", "Tibshirani"), gen.inverse.diag = 0)
.RA
.AG object
a `l1celist' object
.OA
.AG type
whether to use the covariance formula of Osborne, Presnell and Turlach
or the formula of Tibshirani
.AG gen.inverse.diag
if Tibshirani's formula for the covariance matrix is used, this value
is used for the diagonal elements of the generalised inverse that
appears in the formula that corresponds to parameters estimated to be
zero.  The default is 0, i.e. use the Moore-Penrose inverse.
Tibshirani's code uses gen.inverse.diag=1e11.
.DN
This is a method for the function `vcov()' for objects inheriting
from class `l1celist'.
See `vcov' for the general behavior of this function.
.DT
See documentation.
.WR
