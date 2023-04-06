### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 40b56226-558e-45e3-9504-11809b487fd5
# Your task is to figure out if a sentence is a pangram.

# A pangram is a sentence using every letter of the alphabet at least once. It is case insensitive, so it doesn't matter if a letter is lower-case (e.g. k) or upper-case (e.g. K).

# For this exercise we only use the basic letters used in the English alphabet: a to z.

# ╔═╡ 49096e31-cb49-4da0-bc17-de8aed66fedc
"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
	alphabet = Dict(1=> "a", 2=> "b", 3=> "c", 
                    4=> "d", 5=> "e", 6=> "f", 
                    7=> "g", 8=> "h", 9=> "i", 
                    10=> "j", 11=> "k", 12=> "l", 
                    13=> "m", 14=> "n", 15=> "o", 
                    16=> "p", 17=> "q", 18=> "r", 
                    19=> "s", 20=> "t", 21=> "u", 
                    22=> "v", 23=> "w", 24=> "x", 
                    25=> "y", 26=> "z")
	x = lowercase(input)
	y = []
	for i in 1:length(alphabet)
		if occursin(alphabet[i], x)
			push!(y, 1)
		else
		end
	end
	if length(y) == 26
		return true
	else
		return false
	end
end


# ╔═╡ Cell order:
# ╠═40b56226-558e-45e3-9504-11809b487fd5
# ╠═49096e31-cb49-4da0-bc17-de8aed66fedc
