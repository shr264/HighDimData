Pkg.add("Distributions")
Pkg.add("PyPlot")
Pkg.add("Gadfly")
Pkg.add("Cairo")

using PyPlot
using Distributions
using Gadfly
using Cairo


srand(12345)
print("enter p "); p = int(readline(STDIN))
print("enter n  "); n = int(readline(STDIN))
print("enter notsparse  "); notsparse = int(readline(STDIN))

function gradf(X::Matrix{Float64},y::Vector{Int}, p::Vector{Float64}, lambda::Float64,beta::Vector{Float64})
    -X'*(y-p)+lambda*sign(beta)
end

function neglogLkhd(probOld::Vector{Float64}, y::Vector{Int}, lambda::Float64, betaOld::Vector{Float64})
    n = length(y)
    z = zeros(n)
    p = length(betaOld)
    penaltyterm = zeros(p)
    for i = 1:n
            term1 = y[i]*log(probOld[i])
            term2 = (1-y[i])*log(1-probOld[i])
            z[i] = -term1-term2
        end
    	for i = 1:p
            penaltyterm[i] = lambda*abs(betaOld[i])
        end
	(sum(z) + sum(penaltyterm))
end

expit(x::Float64) = exp(x)/(1+exp(x))
expit(V::Vector{Float64}) = [expit(v) for v in V]

rbern(p::Float64) = 0<p<1?rand(Bernoulli(p)):error("p not in (0,1)")
rbern(V::Vector{Float64}) = [rbern(v) for v in V]

dataMat = rand(n,p)
(U,S,V) = svd(dataMat); @elapsed svd(dataMat)
#d = rand(Uniform(0,sqrt(30)),p)
#X = U*diagm(d)*V'
X = U*V'
betaTrue = rand(Normal(0,2),notsparse)
betaTrue =  [betaTrue;zeros((p-notsparse))]
Xbeta = X*betaTrue
probTrue = expit(Xbeta)
y = rbern(probTrue)

maxcount = 20
sparsityvec = zeros(maxcount)
betaoptvec = zeros(maxcount)
nlogoptvec = zeros(maxcount)
for count = 1:maxcount
lambda = 0.1*count
maxIter = 10000
betaOld = zeros(p)+1
Xbeta = X*betaOld
probOld = expit(Xbeta)
alpha = 1
tol = 10.0^-4
iter = 0
eps = 1
betamat = betaOld
betaopt = betaOld
Xbeta = X*betaOld
probopt = expit(Xbeta)
neglogLkhdvec = neglogLkhd(probopt,y,lambda,betaopt)
epsvec = eps
trueerror = sqrt(dot(betaopt-betaTrue,betaopt-betaTrue))
trueerrorvec = trueerror

while iter< maxIter && eps > tol
	betaNew = betaOld - (alpha/(iter+1))*gradf(X,y,probOld,lambda, betaOld)
	Xbeta = X*betaNew
    	probNew = expit(Xbeta)
    	eps = sqrt(dot(betaNew-betaopt,betaNew-betaopt))
	trueerror = sqrt(dot(betaopt-betaTrue,betaopt-betaTrue))

	if neglogLkhd(probNew,y,lambda,betaNew)<neglogLkhd(probopt,y,lambda,betaopt)
           betaopt = betaNew
           Xbeta = X*betaopt
           probopt = expit(Xbeta)
        end

	betaOld = betaNew
	probOld = probNew

	if (iter%1000) == 0
	   println("Iteration:",iter," " ,neglogLkhd(probOld,y,lambda,betaOld)," ",eps,"\n")
	end

	neglogLkhdvec = [neglogLkhdvec neglogLkhd(probopt,y,lambda,betaopt)]
	epsvec = [epsvec eps]
	trueerrorvec = [trueerrorvec trueerror]
	iter = iter+1
end


sparsityvec[count] = sum(abs(betaopt).<(10.0^-3))
betaoptvec[count] = sqrt(dot(betaopt-betaTrue,betaopt-betaTrue))
nlogoptvec[count] = neglogLkhd(probopt,y,lambda,betaopt)
x = [5:iter]
nllplot = plot(x=x,y=neglogLkhdvec[5:iter],Geom.line,Guide.xlabel("Iterations"),Guide.ylabel("Negative Log Likelihood"),Guide.title("Negative Log Likelihood"))
draw(PDF(join(["nllplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), nllplot)
errorcplot = plot(x=x,y=epsvec[5:iter],Geom.line,Guide.xlabel("Iterations"),Guide.ylabel("Epsilon"),Guide.title("Epsilon Plots"))
draw(PDF(join(["errorcplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), errorcplot)
trueerrorplot = plot(x=x,y=trueerrorvec[5:iter],Geom.line,Guide.xlabel("Iterations"),Guide.ylabel("Norm of True Beta minus Optimum Beta"),Guide.title("Norm of True Beta minus Optimum Beta"))
draw(PDF(join(["trueerrorplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), trueerrorplot)
end

lambdavec = 0:0.1:(0.1)*maxcount
sparsityplot = plot(x=lambdavec,y=sparsityvec,Geom.line,Guide.xlabel("Lambda"),Guide.ylabel("Sparsity"),Guide.title("Sparsity"))
draw(PDF(join(["sparsityplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), sparsityplot)
betaoptplot = plot(x=lambdavec,y=betaoptvec,Geom.line,Guide.xlabel("Lambda"),Guide.ylabel("Norm of Estimated Beta minus True Beta"),Guide.title("Estimated Beta minus True Beta versus Lambda"))
draw(PDF(join(["betaoptplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), betaoptplot)
nlogoptplot = plot(x=lambdavec,y=nlogoptvec,Geom.line,Guide.xlabel("Lambda"),Guide.ylabel("Negative Log Likelihood for Optimum Beta"),Guide.title("Negative Log Likelihood versus Lambda"))
draw(PDF(join(["nlogoptplot",string(count),"-",string(notsparse),".pdf"]), 16cm, 12cm), nlogoptplot)





