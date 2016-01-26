.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: gcv.d,v 1.2 1998/09/18 07:03:35 bturlach Exp $
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
.FN gcv
.TL
Generalised cross-validation score
.DN
Extracts the generalised cross-validation score(s) from fitted
model objects.
.CS
gcv(...)
.RA
.AG ...
Fitted model object of class `l1ce' or `l1celist'.
.RT
A vector (or matrix) with the bound(s) (relative [if used] and absolute),
the Lagrangian(s) and the generalised cross-validation score(s) for
the fitted model(s).
.SE
None
.DT
See documentation.
.WR
