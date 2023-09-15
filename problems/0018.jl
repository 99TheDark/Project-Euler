input = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

function largestPath(text::String)::Int64
    numsStr = split(replace(text, "\n" => " "), " ")
    nums = parse.(Int, numsStr)

    layerCount = Int((-1 + sqrt(1 + 8 * length(nums))) / 2)
    layers::Vector{Vector{Int64}} = []
    pre = 1
    for i in 1:layerCount
        arr::Vector{Int64} = []
        for j in pre:pre+i-1
            push!(arr, nums[j])
        end
        push!(layers, arr)
        pre += i
    end

    path::Vector{Int64} = []
    for (idx, layer) in enumerate(layers)
        if idx == 1
            push!(path, 1)
        else
            i = path[idx-1]
            if layer[i] > layer[i+1]
                push!(path, i)
            else
                push!(path, i + 1)
            end
        end
    end

    vals = [(layers[idx][el]) for (idx, el) in enumerate(path)]
    return sum(vals)
end

println(largestPath(input)) # Off by 10.
