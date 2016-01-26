.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: l1ce.object,v 1.2 1998/09/20 09:28:27 bturlach Exp $
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
.FN l1ce.object
.TL
L1 Constrainted Estimation Model Object
.DN
These are objects of class `"l1ce"'
They represent the fit of a regression model under an L1 constraint on
(some of the parameters).
.SH GENERATION
This class of objects is returned from the `l1ce' function
to represent a fitted model.
.SH METHODS
The `"l1ce"' class of objects has methods for the following generic
functions:
.br
`coef', `deviance', `fitted', `formula', `gcv', `labels', `predict',
`print', `residuals', `summary', `vcov'.
.SH STRUCTURE
The following components must be included in a legitimate `l1ce' object.
.RC coefficients
the coefficients of the fit of the response to the
columns of the model
matrix.
The names of the coefficients are the names of the
columns of the model matrix.
.RC residuals
the residuals from the fit.
If weights were used, then the residuals are the raw residuals - the
weights are not taken into account.
If you need residuals that all have the same variance, then use the
`residuals' function with `type="pearson"'.
.RC fitted.values
the fitted values from the fit.
If weights were used, the fitted values are not adjusted for the weights.
.RC bound
the (absolute) L1 constraint imposed on the parameters.
.RC relative.bound
optional, the (relative) L1 constraint imposed on the parameters.
Present if `absolute.t=F'.
.RC Lagrangian
the value of the Lagrangian that enforces the constraint at the
solution.
.RC xtx
the moment matrix of the variables that are under the constraint.
(After taking weights, sweep-out variables and standardization into
account).
.RC xtr
the product of the design matrix of the variables that are under the
constraint (after taking weights, sweep-out variables and
standardization into account) with the residual vector.
.RC constrained.coefficients
the coefficients on the scale on which they are constrained.  Useful
as initial value for further fits.
.RC sweep.out
information on the variables that are not under the constraint and on
which the other variables and the response is projected first.
Optional, not present if `sweep.out = NULL'.
.RC assign
the list of assignments of coefficients (and effects) to the terms in
the model.
The names of this list are the names of the terms.
The `i'th element of the list is the vector saying which coefficients
correspond to the `i'th term.
It may be of length 0 if there were no estimable effects for the term.
See also `R.assign' below.
.RC terms
an object of mode `expression' and class `term' summarizing the formula.
Used by various methods, but typically not of direct relevance to users.
.RC call
an image of the call that produced the object, but with the arguments
all named and with the actual formula included as the formula argument.
.RC contrasts
a list containing sufficient information to construct the contrasts
used to fit any factors occurring in the model.
The list contains entries that are either matrices or character vectors.
When a factor is coded by contrasts, the corresponding contrast matrix
is stored in this list.
Factors that appear only as dummy variables and variables in the model
that are matrices correspond to character vectors in the list.
The character vector has the level names for a factor or the column
labels for a matrix.
.RC x
optionally the model matrix, if `x=T'.
.RC y
optionally the response, if `y=T'.
.DT
The residuals, fitted values, coefficients, and effects should be extracted
by the generic functions of the same name, rather than
by the `$' operator.  
.SA
`l1ce', `coefficients'.
.KW classes
.KW regression
.KW methods
.WR
