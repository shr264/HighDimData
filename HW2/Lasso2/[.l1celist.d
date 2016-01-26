.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: [[.l1celist.d,v 1.1 1998/09/18 11:23:09 bturlach Exp $
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
.FN [.l1celist
.FN [[.l1celist
.TL
Subscript a `l1celist' Object
.DN
Allows the user to extract values from a `l1celist' object by using 
subscripts.
.CS
x[i, drop]
x[[i]]
.RA
.AG x
an object inheriting from class `"l1celist"'.
.OA
.AG "i"
subscripts applying to elements (fitted models) in the list.
.AG drop
Default is `TRUE'.  If only one model is subscribed, then it is
returned as an object of class `"l1ce"'.  If `drop=F', then an object
of class `"l1celist"' is always returned.
.RT
an object of class `"l1celist"' or class `"l1ce"'
extracted from the original list.
.KW manip
.WR
