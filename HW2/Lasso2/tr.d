.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: tr.d,v 1.1 1998/12/18 06:41:47 bturlach Exp $
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
.FN tr
.TL
Trace of a matrix
.DN
Calculates the trace of a matrix
.CS
tr(mat)
.RA
.AG mat
a square matrix
.RT
The trace of the matrix, i.e. the sum of its diagonal elements, is returned.
.EX
# The function is currently defined as
function(mat)
{
  dims <- dim(mat)
  if((length(dims) != 2) || dims[1] != dims[2])
    stop("This function is only defined for square matrices")
  sum(diag(mat))
}
.KW math
.WR
