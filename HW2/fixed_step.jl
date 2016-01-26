Pkg.add("Distributions")

using Distributions

p = 300
n = 5000

function gradf(X::Matrix{Float64},y::Vector{Int}, p::Vector{Float64})
	X'*(y-p)
end

function logLkhd(p::Vector{Float64},y::Vector{Int})
	n = length(y)
	z = zeros(n)
	for i = 1:n
		z[i] = y[i]*log(p[i]) + (1-y[i])*log(1-p[i])
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
betaTrue = rand(Normal(0,2),p)
Xbeta = X*betaTrue
probTrue = expit(Xbeta)
y = rbern(probTrue)

maxIter = 1000
betaOld = zeros(p)
Xbeta = X*betaOld
probOld = expit(Xbeta)
alpha = 5
tol = 10.0^-5
iter = 0
eps = 1

while iter< maxIter && eps > tol
	betaNew = betaOld + alpha*gradf(X,y,probOld)
	Xbeta = X*betaNew
	probNew = expit(Xbeta)
	eps = abs(logLkhd(probNew,y) - logLkhd(probOld,y))
	betaOld = betaNew
	probOld = probNew
	println(logLkhd(probNew,y)," ",eps)
	iter = iter+1
end

sqrt(dot(betaOld-betaTrue,betaOld-betaTrue))




