.BG
.FN residuals.gl1ce
.TL
Compute Residuals for `gl1ce' Objects
.DN
Computes one of the four types of residuals available for `gl1ce' objects.
.CS
residuals.gl1ce(object, type=c("deviance", "pearson", "working", 
				"response") )
.DN
This is a method for the function residuals() for  objects inheriting from 
class `gl1ce'.  However, as several types of residuals are available for 
`gl1ce' objects, there is an additional optional argument type.
.RA
.AG object
an object inheriting from class `gl1ce' representing a fitted model.
.OA
.AG type
type of residuals, with choices "deviance",  "pearson", "working" or "response"
; the first is the default.
.RT
A numeric vector of residuals. See Statistical Models in S for detailed 
definitions of each type of residual. The sum of squared deviance residuals 
add up to the deviance.  The pearson residuals are standardized residuals on 
the scale of the response.  The  working residuals reside on the
object, and are the residuals from the final fit. The response residuals are 
simply  y-fitted(object).  The summary() method for `gl1ce' objects produces
deviance residuals.  The residuals component of a `gl1ce' object contains the 
working residuals.
.SH REFERENCES
Chambers,  J.M.,  and  Hastie,  T.J.  (1991).  Statistical Models in S, 
pp. 204--206.
.WR
