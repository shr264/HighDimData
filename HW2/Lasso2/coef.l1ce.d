.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: coef.l1ce.d,v 1.5 1999/12/01 05:08:40 bturlach Exp $
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
.FN coef.l1ce
.TL
Use `coef()' on a `l1ce' object
.CS
coef.l1ce(object, all=T, constrained=F, ...)
.DN
This is a method for the function `coef()' for objects inheriting from
class `l1ce'. 
See `coef' or `coef.default' for the general behavior of this function
and for the interpretation of `object'.
If `all=F', then only the non-zero coefficients are returned.
If `constrained=T', then only the coefficients that were constrained
are returned.
.WR
