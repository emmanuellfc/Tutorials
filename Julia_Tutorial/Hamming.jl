### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 899ba837-9787-4450-bf12-8e1a5fe7adc7
# ╠═╡ skip_as_script = true
#=╠═╡
#Calculate the Hamming Distance between two DNA strands.

#Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a lifetime!

#When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them we can see how many mistakes occurred. This is known as the "Hamming Distance".

#The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of different lengths should not work. The general handling of this situation (e.g., raising an exception vs returning a special value) may differ between languages.
  ╠═╡ =#

# ╔═╡ 859075a4-80ef-41ec-9954-2909ee385361
"Calculating the Hamming Distance between two DNA strands."
function distance(x, y)
    hamming = []
	if length(x) != length(y)
		throw(ArgumentError("Strings should be the same size."))
	elseif length(x) == 0 && length(y) == 0
		return 0
	else
		for i in 1:length(x)
			if x[i] == y[i]
            	push!(hamming, 0)
			else
				push!(hamming, 1)
			end
		end
	end
	return sum(hamming)
end

# ╔═╡ Cell order:
# ╠═899ba837-9787-4450-bf12-8e1a5fe7adc7
# ╠═859075a4-80ef-41ec-9954-2909ee385361
