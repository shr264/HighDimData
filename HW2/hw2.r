
library("glmnet")
glmnet
                                        #binomial
x=matrix(rnorm(100*20),100,20)
g2=sample(1:2,100,replace=TRUE)
fit2=glmnet(x,g2,family="binomial")
summary(fit2)
fit2$beta

library("penalized")
penalized
.lasso
ls(penalized)

install.packages("penalized")
