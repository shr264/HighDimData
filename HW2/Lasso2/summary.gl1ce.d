.BG
.FN summary.gl1ce
.TL
Summary Method for Generalized L1 Constrained Regression Models
.DN
Returns a summary list for fitted generalized L1 constrained regression 
models. 
.CS
summary.gl1ce(object)
.RA
.AG object
fitted `gl1ce' model object.  This is assumed to be the
result of some fit that produces an object inheriting from
the class `gl1ce', in the sense that the components returned
by the gl1ce() function will be available.
.RT
a list is returned with the following components.
.RC call
as contained on object
.RC residuals
the deviance residuals, as produced by residuals(object, type = "deviance")
.RC coefficients
the coefficients of the model.
.RC family
the family of models to which object belongs, along with the variance and link 
functions for that model.
.RC bound
the bound used in fitting this model
.RC Lagrangian
the Lagrangian of the model
.DT
This function is a method for the generic function summary for  class  `gl1ce'.
It can be invoked by calling summary for an object of the appropriate class,
or directly by calling  summary.gl1ce  regardless of the class of the object.
.WR







