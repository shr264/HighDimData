.\" Copyright (C) 1998
.\" Berwin A. Turlach <bturlach@stats.adelaide.edu.au>
.\" Bill Venables <wvenable@stats.adelaide.edu.au>
.\" $Id: summary.l1ce.d,v 1.2 1998/09/27 02:02:02 bturlach Exp $
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
.BG
.FN summary.l1ce
.TL
Summary Method for Regression Models with an L1 constraint on the
parameters. 
.DN
Returns a summary list for a regression model with an L1 constraint on
the parameters.  A null value will be returned if printing is invoked.
.CS
summary.lm(object,
           correlation=T,
           type = c("OPT", "Tibshirani"),
           gen.inverse.diag = 0,
           sigma = NULL)
.RA
.AG object
the fitted model of class `"l1ce"'.
.OA
.AG correlation
logical flag: if `TRUE', then the correlation matrix for the coefficients
is included in the summary.
.AG type
whether to use the covariance formula of Osborne, Presnell and Turlach
or the formula of Tibshirani
.AG gen.inverse.diag
if Tibshirani's formula for the covariance matrix is used, this value
is used for the diagonal elements of the generalised inverse that
appears in the formula that corresponds to parameters estimated to be
zero.  The default is 0, i.e. use the Moore-Penrose inverse.
Tibshirani's code uses gen.inverse.diag=1e11.
.AG sigma
the residual standard error estimate.  If not provided, then it is
estimated by the deviance of the model divided by the error degrees of
freedom.
.RT
a list is returned with the following components:
.RC correlation
the computed correlation coefficient matrix for the coefficients in
the model. 
.RC cov.unscaled
the unscaled covariance matrix; i.e, a matrix such that multiplying it by
an estimate of the error variance produces an estimated covariance matrix
for the coefficients.
.RC df
the number of degrees of freedom for the model and for residuals.
.RC coefficients
a matrix with three columns, containing the coefficients, their standard errors
and the corresponding t statistic.
.RC residuals
the model residuals.  These are the weighted residuals if weights were given 
in the model. 
.RC sigma
the residual standard error estimate.
.RC terms
the terms object used in fitting this model.
.RC call
the call object used in fitting this model.
.RC bound
the bound used in fitting this model.
.RC relative.bound
the relative bound used in fitting this model (may not be present)
.RC Lagrangian
the Lagrangian of the model
.DT
.ME summary l1ce
.SA
`l1ce', `l1ce.object', `summary'.
.EX
summary(l1ce(lpsa ~ .,Prostate))

# Produces the following output:
Call:
 l1ce(formula = lpsa ~ ., data = Prostate)
Residuals:
    Min      1Q Median    3Q  Max 
 -1.636 -0.4119  0.076 0.452 1.83

Coefficients:
             Value Std. Error Z score Pr(>|Z|) 
(Intercept) 0.7285 1.3898     0.5242  0.6002  
     lcavol 0.4937 0.0919     5.3711  0.0000  
    lweight 0.2682 0.1774     1.5115  0.1307  
        age 0.0000 0.0111     0.0000  1.0000  
       lbph 0.0093 0.0587     0.1581  0.8744  
        svi 0.4551 0.2525     1.8023  0.0715  
        lcp 0.0000 0.0947     0.0000  1.0000  
    gleason 0.0000 0.1685     0.0000  1.0000  
      pgg45 0.0002 0.0046     0.0391  0.9688  

Residual standard error: 0.7595 on 88.36 degrees of freedom
The relative L1 bound was      : 0.5 
The absolute L1 bound was      : 0.9219925 
The Lagrangian for the bound is:  13.05806 

Correlation of Coefficients:
        (Intercept)  lcavol lweight     age    lbph     svi     lcp gleason 
 lcavol  0.1988                                                            
lweight -0.4815     -0.2071                                                
    age -0.3938     -0.0603 -0.0974                                        
   lbph  0.3629     -0.0201 -0.5165 -0.1303                                
    svi -0.0624     -0.2273 -0.1442  0.0635  0.0648                        
    lcp  0.0457     -0.4153  0.0598  0.0665  0.0632 -0.3779                
gleason -0.7666     -0.2009  0.1163 -0.0774 -0.0617  0.1084 -0.0243        
  pgg45  0.4988      0.0956 -0.0380 -0.0630 -0.1111 -0.1921 -0.2935 -0.6526
.KW regression
.WR
