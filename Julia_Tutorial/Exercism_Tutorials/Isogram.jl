### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 033520f8-e815-4326-91d7-8203ef855c34
# Instructions

# Determine if a word or phrase is an isogram.

# An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

# Examples of isograms:

#     lumberjacks
#     background
#     downstream
#     six-year-old

# The word isograms, however, is not an isogram, because the s repeats.

# Isograms are case insensitive.

# ╔═╡ 0607791a-d894-11ed-3282-71dd8432b241
function isisogram(s)
	y = 0
	ns = filter(x -> !isspace(x), s)
	ls = lowercase(ns)
	rs = replace(ls, "-" => "")
	@show rs
	if length(s) > 0
		for i in 1:length(rs)
			for j in 1:length(rs)
				if rs[i] == rs[j]
					y += 1
				else
					y += 0
				end
			end
		end
		if length(rs) == y
			return true
		else
			return false
		end
	else
		true
	end
end

# ╔═╡ Cell order:
# ╠═033520f8-e815-4326-91d7-8203ef855c34
# ╠═0607791a-d894-11ed-3282-71dd8432b241
