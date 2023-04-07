### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 2685268e-d4e5-11ed-02d2-592a38b6d759
code = Dict("Black" => 0,"Brown" => 1,"Red" => 2, "Orange" => 3, "Yellow" => 4, "Green" => 5, "Blue" => 6, "Violet" => 7, "Grey" => 8, "White" => 9)

# ╔═╡ ae954701-4a2b-49f9-9c42-db4e82211315
# function label(colors)
# 	code = Dict("black" => 0,"brown" => 1,"red" => 2, 
# 				"orange" => 3, "yellow" => 4, "green" => 5, 
# 				"blue" => 6, "violet" => 7, "grey" => 8, 
# 				"white" => 9)
# 	one_digit = string(code[colors[1]])
# 	two_digit = string(code[colors[2]])
# 	main_digit = one_digit*two_digit
# 	zeros = 10^code[colors[3]]
# 	if zeros == 1
# 		@show main_digit
# 	elseif zeros == 10
# 		@show main_digit*"0"
# 	elseif zeros == 100
# 		if 
# 		@show main_digit
# 	elseif zeros == 1000
# 		@show main_digit
# 	end

# end

# ╔═╡ 0482fcfe-434e-42fe-9505-af71f802f4dc
# label(["blue", "grey", "brown"])

# ╔═╡ 85e09384-fc1e-4707-abb4-aa1b5b49ee01
10^1

# ╔═╡ Cell order:
# ╠═2685268e-d4e5-11ed-02d2-592a38b6d759
# ╠═ae954701-4a2b-49f9-9c42-db4e82211315
# ╠═0482fcfe-434e-42fe-9505-af71f802f4dc
# ╠═85e09384-fc1e-4707-abb4-aa1b5b49ee01
