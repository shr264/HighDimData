.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: plot.l1celist.d,v 1.2 1999/11/30 06:14:16 bturlach Exp $
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
.FN plot.l1celist
.TL
Plot a `l1celist' object
.DN
Plots a `l1celist' object on the current graphics device.
.CS
plot.l1celist <- function(object, plot=T, all=T, constrained=F, ...){
.RA
.AG object
fitted model object of class `l1celist'.
.0A
.AG plot
if `TRUE' a `matplot()' of all the coefficients in the list against
the relative bound (absolute bound if relative is not present) is
plotted.  Otherwise no plot is done.
.AG all
If `FALSE', then only the non-zero coefficients are returned.
.AG constrained
if `TRUE' then only the coefficients that were constrained
are returned.
.RT
A matrix with the bound(s) (relative [if used] and absolute),
the Lagrangian(s) and coefficints of the fitted model(s).
.SE
none
.KW hplot
.WR
