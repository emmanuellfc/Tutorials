### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 1bdf696b-2633-4fb5-a798-d3e6ce2d3976
# Instructions

# If you want to build something using a Raspberry Pi, you'll probably use resistors. For this exercise, you need to know only three things about them:

#     Each resistor has a resistance value.
#     Resistors are small - so small in fact that if you printed the resistance value on them, it would be hard to read. To get around this problem, manufacturers print color-coded bands onto the resistors to denote their resistance values.
#     Each band acts as a digit of a number. For example, if they printed a brown band (value 1) followed by a green band (value 5), it would translate to the number 15. In this exercise, you are going to create a helpful program so that you don't have to remember the values of the bands. The program will take 3 colors as input, and outputs the correct value, in ohms. The color bands are encoded as follows:

#     Black: 0
#     Brown: 1
#     Red: 2
#     Orange: 3
#     Yellow: 4
#     Green: 5
#     Blue: 6
#     Violet: 7
#     Grey: 8
#     White: 9

# In resistor-color duo you decoded the first two colors. For instance: orange-orange got the main value 33. The third color stands for how many zeros need to be added to the main value. The main value plus the zeros gives us a value in ohms. For the exercise it doesn't matter what ohms really are.

# ╔═╡ ae954701-4a2b-49f9-9c42-db4e82211315
function label(colors)
	code = Dict("black" => 0,"brown" => 1,"red" => 2, 
				"orange" => 3, "yellow" => 4, "green" => 5, 
				"blue" => 6, "violet" => 7, "grey" => 8, 
				"white" => 9)
	one_digit = code[colors[1]]*10
	two_digit = code[colors[2]]
	zeros = 10^code[colors[3]]
	main = one_digit + two_digit
	full = main * zeros
	kilo_test  = full / 1000
	if isinteger(kilo_test) == true
		return string(Int(kilo_test))*" kiloohms"
	else
		return string(full)*" ohms"
	end
end

# ╔═╡ d53853e1-e742-4286-ba37-86e995407ab1
begin
	using Test
    @test label(["orange", "orange", "black"]) == "33 ohms"
    @test label(["blue", "grey", "brown"]) == "680 ohms"
    @test label(["red", "black", "red"]) == "2 kiloohms"
    @test label(["green", "brown", "orange"]) == "51 kiloohms"
    @test label(["yellow", "violet", "yellow"]) == "470 kiloohms"
    @test label(["orange", "orange", "red"]) == "3300 ohms"
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "71d91126b5a1fb1020e1098d9d492de2a4438fd2"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ Cell order:
# ╠═1bdf696b-2633-4fb5-a798-d3e6ce2d3976
# ╠═ae954701-4a2b-49f9-9c42-db4e82211315
# ╠═d53853e1-e742-4286-ba37-86e995407ab1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
