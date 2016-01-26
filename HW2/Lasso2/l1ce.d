.BG
.FN l1ce
.TL
Fit a regression problem while imposing an L1 constraint on the parameters
.DN
Returns an object of class `"l1ce"' or `"licelist"' that represents 
fit(s) of linear models while imposing L1 constraint(s) on the parameters.
.CS
l1ce(formula, data=sys.parent(), weights, subset, na.action,
     sweep.out= ~ 1, x=F, y=F, contrasts=NULL, standardize=T,
     trace=F, guess.constrained.coefficients=double(p),
     bound=0.5, absolute.t=F, ...)
.RA
.AG formula
a formula object, with the response on the left of a `~' operator,
and the terms, separated by `+' operators, on the right.
.OA
.AG data
a `data.frame' in which to interpret the variables named in the
formula, the `weights', the `subset' and the `sweep.out' argument.
If this is missing, then the variables in the formula should be on the
search list.
.AG weights
vector of observation weights.
The length of `weights' must be the same as the number of observations.
The weights must be nonnegative and it is strongly recommended that they
be strictly positive, since zero weights are ambiguous, compared to use
of the `subset' argument.
.AG subset
expression saying which subset of the rows of the data
should be used in the fit.
This can be a logical vector (which is replicated to have length equal
to the number of observations), or a numeric vector indicating which 
observation numbers are to be included, or a character vector of the
row names to be included.
All observations are included by default.
.AG na.action
a function to filter missing data.
This is applied to the `model.frame' after
any `subset' argument has been used.
The default (with `na.fail') is to create an error
if any missing values are found.
A possible alternative is `na.omit', which deletes observations
that contain one or more missing values.
.AG sweep.out
a formula object, variables whose parameters are not put under the
constraint are swept out first.  The variables should appear on the
right of a `~' operator and be separated by `+' operators.  Default is
`~1', i.e. the constant term is not under the constraint.  If this
parameter is `NULL', then all parameters are put under the constraint.
.AG x
logical flag: if `TRUE', the model matrix is returned in component `x'.
.AG y
logical flag: if `TRUE', the response is returned in component `y'.
.AG contrasts
a list giving contrasts for some or all of the factors
appearing in the model formula.
The elements of the list should have the same name as the variable
and should be either a contrast matrix (specifically, any full-rank
matrix with as many rows as there are levels in the factor),
or else a function to compute such a matrix given the number of levels.
.AG standardize
logical flag: if `TRUE', then the columns of the model matrix that
correspond to parameters that are constrained are standardized to have
emprical variance one.  The standardization is done after taking
possible weights into account and after sweeping out variables whose
parameters are not constrained.
.AG trace
logical flag: if `TRUE', then the status during each iteration of
the fitting is reported.
.AG guess.constrained.coefficients
initial guess for the parameters that are constrained.  
.AG bound
numeric, either a single number or a vector: the constraint(s) that
is/are put onto the L1 norm of the parameters. 
.AG absolute.t
logical flag: if `TRUE', then `bound' is an absolute bound and
all entries in `bound' can be any positive number.  If `FALSE', then
`bound' is a relative bound and all entries must be between 0 and 1.
.RT
an object of class `l1ce' (if `bound' was a single value) or
`l1celist' (if `bound' was a vector of values) is returned.
See `l1ce.object' and `l1celist.object' for details.
.SE
None
.SH REFERENCES
Osborne, M.R., Presnell, B. and Turlach, B.A. (1999).
On the {LASSO} and its dual,
.ul
Journal of Computational and  Graphical Statistics.
To appear.
.sp
Tibshirani, R. (1996).
Regression shrinkage and selection via the lasso,
.ul
Journal of the Royal Statistical Society, Series B
\fB58\fR(1), 267-288.
.EX
l1ce(Yield ~ ., Iowa, bound = 10, trace = trace, absolute.t=T)

l1ce(lpsa ~ ., Prostate, bound=(1:30)/30)
.KW models
.KW optimize
.KW regression
.WR
