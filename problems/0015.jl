function choose(n::Int64, r::Int64)::BigInt
	bn, br = big(n), big(r)
	return factorial(bn) / (factorial(bn - br) * factorial(br))
end

function binom(num::Int64)::Int64
	return choose(num * 2, num)
end

numSolutions = binom(20);

println(numSolutions)