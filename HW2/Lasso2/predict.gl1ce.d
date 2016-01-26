.BG
.FN predict.gl1ce
.TL
Use `predict()' on a `gl1ce' object
.DN
Extracts the fitted values from a `gl1ce()' object and returns a matrix of
predictions.
.CS
predict.gl1ce(object, newdata, type=c("link", "response"), ...)
.RA
.AG object
a fitted `gl1ce' object.
.OA
.AG newdata
a data frame containing the values at which predictions are required.
This argument can be missing, in which case predictions are made at
the same values used to compute the object.  
Only those predictors referred to in the right side of the formula in
object need be present by name in `newdata'. 
.AG type
type of predictions, with choices "link" (the default), or "response".
The default produces predictions on the scale of the additive predictors, and 
with  newdata missing,  predict()  is  simply  an extractor function for
this component of a `gl1ce' object. If "response" is selected, the  predictions
are on the scale of the response, and are monotone transformations of the 
additive predictors, using the  inverse link function.
.RT
a vector of predictions.
.DT
This function is a method for the generic function predict
for  class  `gl1ce'.   It can be invoked by calling predict
for an object of the appropriate  class,  or  directly  by
calling  predict.gl1ce  regardless  of the class of the object.
.SH WARNING
`predict' can produce incorrect predictions when the `newdata' 
argument is used if the formula in `object' involves 
data-dependent transformations, such as `poly(Age, 3)' 
or `sqrt(Age - min(Age))'.
.WR
