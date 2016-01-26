.BG
.FN gl1ce
.TL
Fit a generalized regression problem while imposing an L1 constraint on the 
parameters
.DN
Returns an object of class `gl1ce' that represents a fit of a generealized
linear model while imposing an L1 constraint on the parameters.
.CS
gl1ce(formula, data=sys.parent(), weights, subset, na.action, 
family=gaussian, control=glm.control(...), sweep.out= ~ 1, x=F, y=T, 
contrasts=NULL, standardize=T, guess.constrained.coefficients=double(p), 
bound=0.5, ...)
.RA
.AG formula
a formula object, with the response on the left hand side of a `~' operator, 
and the terms, separated by a `+' operator, on the right hand side. 
.OA
.AG data
a `data.frame' in which to interpret the variables named in the
formula, the `weights', the `subset' and the `sweep.out' argument.
If this is missing, then the variables in the formula should be on the
search list.
.AG weights
vector of observation weights.
The length of `weights' must be the same as the number of observations.
The weights must be strictly positive, since zero weights are ambiguous, 
compared to use of the `subset' argument.
.AG subset
expression saying which subset of the rows of the data should be used in the 
fit.  This can be a logical vector (which is replicated to have length equal
to the number of observations), or a numeric vector indicating which 
observation numbers are to be included, or a character vector of the row names
to be included.  All observations are included by default.
.AG na.action
This is applied to the `model.frame' after any `subset' argument has been used.
The default (with `na.fail') is to create an error if any missing values are 
found.  A possible alternative is `na.omit', which deletes observations
that contain one or more missing values.
.AG family
a family object - a list of functions and expressions for defining the link and
variance functions, initialization and iterative weights.  Families supported
are gaussian, binomial, poisson, Gamma, inverse.gaussian and quasi.  Functions
like binomial produce a family object, but can be given without the 
parentheses. Family functions can take arguments, as in binomial(link=probit).
.AG control
a list of iteration and algorithmic  constants.  See glm.control for their 
names and default values.  These can also be set as arguments to gl1ce itself.
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
a list giving contrasts for some or all of the factors appearing in the model 
formula. The elements of the list should have the same name as the variable
and should be either a contrast matrix (specifically, any full-rank
matrix with as many rows as there are levels in the factor),
or else a function to compute such a matrix given the number of levels.
.AG standardize
logical flag: if `TRUE', then the columns of the model matrix that
correspond to parameters that are constrained are standardized to have
empirical variance one.  The standardization is done after taking
possible weights into account and after sweeping out variables whose
parameters are not constrained.
.AG guess.constrained.coefficients
initial guess for the parameters that are constrained. 
.AG bound
numeric, either a single number or a vector: the constraint(s) that
is/are put onto the L1 norm of the parameters. 
.RT
an object of class `gl1ce' is returned.
See `gl1ce.object' for details.
.SE
None
.WR
