Pkg.add("Distributions")

using Distributions

p = 300
n = 5000
notsparse = 50

function gradf(X::Matrix{Float64},y::Vector{Int}, p::Vector{Float64})
	X'*(y-p)-lambda*
end

function neglogLkhd(p::Vector{Float64},y::Vector{Int})
	n = length(y)
	z = zeros(n)
	for i = 1:n
	      	if p[i] > 0
		   term1 = y[i]*log(p[i])
		end
		if p[i] < 1
		   term2 = (1-y[i])*log(1-p[i])
		end
		z[i] = -term1-term2
	end
	sum(z)
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
betaTrue = [betaTrue;zeros((p-notsparse),1)]
Xbeta = X*betaTrue
probTrue = expit(Xbeta)
y = rbern(probTrue)

lambda = 1
maxIter = 1000
betaOld = zeros(p)
Xbeta = X*betaOld
probOld = expit(Xbeta)
alpha = 0.5
tol = 10.0^-5
iter = 0
eps = 1
betamat = betaOld 

while iter< maxIter && eps > tol
	betaNew = betaOld + alpha*gradf(X,y,probOld)
	betamat = [betamat betaNew] 
	Xbeta = X*betaNew
	probNew = expit(Xbeta)
	eps = abs(neglogLkhd(probNew,y) - neglogLkhd(probOld,y))
	betaOld = betaNew
	probOld = probNew
	println(neglogLkhd(probNew,y)," ",eps)
	iter = iter+1
end

betaest = betamat[:,2]
Xbeta = X*betaest
probOld = expit(Xbeta)
for i = 3:iter
    betaNew = betamat[:,i]
    Xbeta = X*betaNew
    probNew = expit(Xbeta)
    if neglogLkhd(probNew,y)<neglogLkhd(probOld,y)
       betaest = betamat[:,i]
    end
    Xbeta = X*betaest
    probOld = expit(Xbeta)
end






