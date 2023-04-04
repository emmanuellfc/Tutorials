### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ c9cf17c8-d30a-11ed-1446-69d0e0eeb600
"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
#function ispangram(input)

# end



# ╔═╡ f7e5310e-42be-4d71-81ce-e9a7d63b4206
alphabet = Dict(1  => "A", 2  => "B", 3  => "C", 4  => "D",
				5  => "E", 6  => "F", 7  => "G", 8  => "H", 
				9  => "I", 10 => "J", 11 => "K", 12 => "L",
				13 => "M", 14 => "N", 15 => "O", 16 => "P", 
				17 => "Q", 18 => "R", 19 => "S", 20 => "T",
				21 => "U", 22 => "V", 23 => "W", 24 => "X", 
				25 => "Y", 26 => "Z");

# ╔═╡ 66b15312-164d-487a-b066-001a672fce92
begin
	x = lowercase("abcdefghijklmnopqrstuvwxy");
	y = [];
	for j in 1:length(alphabet)
		for i in 1:length(x)
			if lowercase(alphabet[j]) == string(x[i])
				for k in 1:length(y)
					if y[k] != string(x[i])
						push!(y, string(x[i]))
					else
					end
				end
			else
			end
		end
	end
	y
end

# ╔═╡ 35b142ce-fdc7-4c52-bf3e-8a6d02f79d88
begin
	z = []
	for r in 1:length(x)
		if string(x[r]) == lowercase(alphabet[5])
			push!(z, true)
		else
		end
	end
	z
end

# ╔═╡ f8b5ded6-732a-4f68-8de9-6ce10e6f4890
begin
	x1 = []
	for i in 1:10
		push!(x1,i)
	end
	x1
end

# ╔═╡ Cell order:
# ╠═c9cf17c8-d30a-11ed-1446-69d0e0eeb600
# ╠═f7e5310e-42be-4d71-81ce-e9a7d63b4206
# ╠═66b15312-164d-487a-b066-001a672fce92
# ╠═35b142ce-fdc7-4c52-bf3e-8a6d02f79d88
# ╠═f8b5ded6-732a-4f68-8de9-6ce10e6f4890
