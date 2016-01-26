.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: Iowa.d,v 1.3 1999/12/01 05:07:43 bturlach Exp $
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
.BG D
.FN Iowa
.TL
The Iowa Wheat Yield Data
.SH SUMMARY
The data gives the pre-season and three growing months' precipitation,
the mean temperatures for the three growing months and harvest month,
the year, and the yield of wheat for the USA state of Iowa, for the
years 1930--1962.
.SH "DATA DESCRIPTION"
The data frame has the following components:
.AG Year
Year of measurement (surrogate for variety improvements)
.AG Rain0
Pre-season rainfall (in.)
.AG Temp1
Mean temperature for the first growing month (deg. F)
.AG Rain1
Rainfall for the first growing month (in.)
.AG Temp2
Mean temperature for the second growing month (deg. F)
.AG Rain2
Rainfall for the second growing month (in.)
.AG Temp3
Mean temperature for the third growing month (deg. F)
.AG Rain3
Rainfall for the third growing month (in.)
.AG Temp4
Mean temperature for the harvest month (deg. F)
.AG Yield
Yield of wheat in Iowa for the given year (bush./acre)
.SH CATEGORY
Multiple regression; diagnostics.
.SH SOURCE
CAED Report, 1964.  Quoted in Draper and Smith, Applied Regression
Analysis.
.KW sysdata
.WR
