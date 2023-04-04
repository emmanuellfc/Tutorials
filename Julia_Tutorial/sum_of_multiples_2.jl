### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ acb9ffa6-d196-11ed-2b9f-c14923a2a81c
function sum_of_multiples(limit, factors)
    for i in 1:factors
		sum_for_i = 0
		for j in 1:limit
			factor = factor[i] * j
			if factor <= limit
				sum_for_i += factor
				return sum_for_i
			else
				return false
				
			
		end
	end
end

# ╔═╡ d540f47e-a5d5-4a57-8d0f-995a393f553d
limit = 20

# ╔═╡ ddcd5b9c-0336-458d-bfe9-fb85360b6adc
factors = [3,5]

# ╔═╡ be3a9753-3ad5-46d5-b5d8-e0a6c8be6c15
factor_list  = []

# ╔═╡ 8e826f03-c2b7-41bc-b100-5771b006fbe3
for i in 1:length(factors)
	for j in 1:limit
		factor = factors[i] * j
			if factor < limit
				push!(factor_list, factor)
			else
			end
	end
end

# ╔═╡ 7e6a4ab3-6e35-427b-ab0a-bd3b0108915c
factor_list

# ╔═╡ 59efa14f-a4a9-40ad-b1c5-5f5c06e66f1b
sum(factor_list)

# ╔═╡ Cell order:
# ╠═acb9ffa6-d196-11ed-2b9f-c14923a2a81c
# ╠═d540f47e-a5d5-4a57-8d0f-995a393f553d
# ╠═ddcd5b9c-0336-458d-bfe9-fb85360b6adc
# ╠═be3a9753-3ad5-46d5-b5d8-e0a6c8be6c15
# ╠═8e826f03-c2b7-41bc-b100-5771b006fbe3
# ╠═7e6a4ab3-6e35-427b-ab0a-bd3b0108915c
# ╠═59efa14f-a4a9-40ad-b1c5-5f5c06e66f1b
