.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: Prostate.d,v 1.4 1999/12/01 05:07:34 bturlach Exp $
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
.FN Prostate
.TL
Prostate Cancer Data
.SH SUMMARY
These data come from a study that examined the correlation between the
level of prostate specific antigen and a number of clinical measures
in men who were about to receive a radical prostatectomy.
.SH "DATA DESCRIPTION"
The data frame has the following components:
.AG lcavol
log(cancer volume)
.AG lweight
log(prostate weight)
.AG age
age
.AG lbph
log(benign prostatic hyperplasia amount)
.AG svi
seminal vesicle invasion
.AG lcp
log(capsular penetration)
.AG gleason
Gleason score
.AG pgg45
percentage Gleason scores 4 or 5
.AG lpsa
log(prostate specific antigen) 
.SH SOURCE
Stamey, T.A., Kabalin, J.N., McNeal, J.E., Johnstone, I.M., Freiha,
F., Redwine, E.A. and Yang, N. (1989).
Prostate specific antigen in the diagnosis and treatment of
adenocarcinoma of the prostate: II. radical prostatectomy treated
patients, 
.ul
Journal of Urology
\fB141\fR(5), 1076-1083.
.KW sysdata
.WR
