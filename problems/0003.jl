function smallestFactor(num::Int64)::Int64
	for i in 2:(num÷2)
		if num % i == 0
			return i
		end
	end

	return 1
end

function factorize(num::Int64)
	factors::Vector{Int64} = []
	while true
		sf = smallestFactor(num)

		if sf == 1
			push!(factors, num)
		else
			push!(factors, sf)
		end

		num ÷= sf

		if sf <= 1
			break
		end
	end

	return factors
end

maxVal = maximum(factorize(600851475143))

println(maxVal)