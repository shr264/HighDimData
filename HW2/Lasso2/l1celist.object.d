.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: l1celist.object.d,v 1.2 1998/09/23 02:55:04 bturlach Exp $
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
.FN l1celist.object
.TL
Several L1 Constrained Estimation Model Object
.DN
These are objects of class `"l1celist"'
They represent the fits of several regression model under an L1
constraint on (some of the parameters).
.SH GENERATION
This class of objects is returned from the `l1ce' function
to represent a fitted model.
.SH METHODS
The `"l1celist"' class of objects has methods for the following generic
functions:
.br
`[', `[[', `aux', `coef', `deviance', `fitted', `formula', `gcv',
`labels', `plot', `print', `residuals', `vcov'.
.SH STRUCTURE
An object of class `l1celist' is a list of lists.  Each component of
the list is a list with the information of an object of class `l1ce'
that is unique for that information.  All shared information is stored
as attributes. 

Each component of the list must include the following components 
for it to be a legitimate `l1celist' object. 
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
.RC xtr
the product of the design matrix of the variables that are under the
constraint (after taking weights, sweep-out variables and
standardization into account) with the residual vector.
.RC constrained.coefficients
the coefficients on the scale on which they are constrained.  Useful
as initial value for further fits.
.DT
The residuals, fitted values, coefficients, and effects should be extracted
by the generic functions of the same name, rather than
by using the `[[]]' and the `$' operator.  
.SA
`l1ce', `coefficients'.
.KW classes
.KW regression
.KW methods
.WR
