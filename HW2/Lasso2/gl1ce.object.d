.BG D
.FN gl1ce.object
.TL
Generalized L1 Constrained Estimation Model Object
.DN
These are objects of class `gl1ce'
They represent the fit of a generalized regression model under an L1 constraint
on (some of the parameters).
.SH GENERATION
This class of objects is returned from the `gl1ce' function
to represent a fitted model.
.SH METHODS
The `gl1ce' class of objects has methods for the following generic
functions:
.br
`deviance', `predict', `print', `residuals', `summary'.  Other generic 
functions are inherited from the class `l1ce'.
.SH STRUCTURE
The following components must be included in a legitimate `gl1ce' object.
.RC coefficients
the coefficients of the fit of the response to the columns of the model matrix.
The names of the coefficients are the names of the columns of the model matrix.
.RC residuals
the residuals from the fit.
If weights were used, then the residuals are the raw residuals - the
weights are not taken into account.
If you need residuals that all have the same variance, then use the
`residuals' function with `type="pearson"'.
.RC fitted.values
the fitted values from the fit.
If weights were used, the fitted values are not adjusted for the weights.
.RC family
the family of which the fitted regression model belongs, eg., 
binomial(link=probit)
.RC bound
the (absolute) L1 constraint imposed on the parameters.
.RC Lagrangian
the value of the Lagrangian that enforces the constraint at the solution.
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
`gl1ce', `coefficients'.
.KW classes
.KW regression
.KW methods
.WR

