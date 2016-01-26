.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: vcov.d,v 1.2 1998/09/20 08:07:05 bturlach Exp $
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
.FN vcov
.TL
Variance-covariance matrix
.DN
Extract Variance-covariance matrix for regression coefficients from fitted
model objects.
.CS
vcov(...)
.RA
.AG ...
Fitted model object of class `lm', `mlm', `aov', `aovlist', `glm',
`nls', `l1ce' or `l1celist'.
.RT
Estimated variance-covariance matrix of the regression coefficients.
.SE
None
.DT
Simple extraction method function.
.WR
