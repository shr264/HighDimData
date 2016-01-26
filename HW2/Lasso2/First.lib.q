### Copyright (C) 1998, 1999
### Justin Lokhorst <jlokhors@stats.adelaide.edu.au>
### Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
### Bill Venables <wvenable@stats.adelaide.edu.au>
### $Id: First.lib.template,v 1.18 1999/12/08 23:35:43 bturlach Exp $
###
### This library is free software; you can redistribute it and/or
### modify it under the terms of the GNU Library General Public
### License as published by the Free Software Foundation; either
### version 2 of the License, or (at your option) any later version.
### 
### This library is distributed in the hope that it will be useful,
### but WITHOUT ANY WARRANTY; without even the implied warranty of
### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
### Library General Public License for more details.
### 
### You should have received a copy of the GNU Library General Public
### License along with this library; if not, write to the Free Software
### Foundation, Inc., 59 Temple Place, Suite 330, Boston,
### MA 02111-1307 USA
### 
".First.lib"<-
  function(...)
{
  dyn.load.lib(...,basename="Lasso2")
  cat("Library to solve regression problems while imposing\n")
  cat("an L1 constraint on the parameters. Release 2.1\n")
  cat("Copyright (C) 1998, 1999\n")
  cat("Justin Lokhorst <jlokhors@stats.adelaide.edu.au>\n")
  cat("Berwin A. Turlach <bturlach@stats.adelaide.edu.au>\n")
  cat("Bill Venables <wvenable@stats.adelaide.edu.au>\n\n")
}

