### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ d16696d0-ffa3-4228-a809-90a5ab38ed22
using Test

# ╔═╡ 7e3f99e7-00d5-4791-81c1-1a6e139bbc19
# Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board, with the number of grains doubling on each successive square.

# There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

# Write code that shows:

# how many grains were on a given square, and
# the total number of grains on the chessboard

# ╔═╡ 2eb0c1c2-d4bf-11ed-1289-0fc963a46863
"""Calculate the number of grains on square `square`."""
function on_square(square)
	if square <= 0 || square >= 65
		throw(DomainError("Number must be in the interval [1, 64]"))
	else
		bs = BigInt(square-1)
		return 2^(bs)
	end
end

# ╔═╡ a9eed496-b0da-4e3d-9c1e-4c0467db34ef
"""Calculate the total number of grains after square `square`."""
function total_after(square)
	x = []
	if square <= 0 || square >= 65
		throw(DomainError("Number must be in the interval [1, 64]"))
	else
		for i in 1:square
			bs = BigInt(i)
			push!(x, on_square(bs))
		end
	end
	return sum(x)
end

# ╔═╡ 9b416e0b-ad9d-47b1-931b-616e0e77857a
@testset "beginning squares" begin
    @test on_square(1) == 1
    @test on_square(2) == 2
    @test on_square(3) == 4
    @test on_square(4) == 8
    @test on_square(16) == 32768
    @test on_square(32) == 2147483648
    @test total_after(1) == 1
    @test total_after(3) == on_square(1) + on_square(2) + on_square(3)
end

# ╔═╡ a555e571-d387-4cf8-b33f-99da1ece9377
total_after(32)

# ╔═╡ 174d87e9-abfb-4b76-b23b-fd2dbda0b399
total_after(64)

# ╔═╡ 7397e45f-b910-464c-a3e9-9b3fef7e227e
@testset "ending squares" begin
    @test total_after(32) < total_after(64)
    @test on_square(64) == 9223372036854775808
    @test total_after(64) == 18446744073709551615
end

# ╔═╡ 032152a6-957a-4593-bb85-09d10e16df75
@testset "Invalid values" begin
    @testset "Zero" begin
        @test_throws DomainError on_square(0)
        @test_throws DomainError total_after(0)
    end
    
    @testset "Negative" begin
        @test_throws DomainError on_square(-1)
        @test_throws DomainError total_after(-1)
    end
    
    @testset "Greater than 64" begin
        @test_throws DomainError on_square(65)
        @test_throws DomainError total_after(65)
    end
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
# ╠═7e3f99e7-00d5-4791-81c1-1a6e139bbc19
# ╠═2eb0c1c2-d4bf-11ed-1289-0fc963a46863
# ╠═a9eed496-b0da-4e3d-9c1e-4c0467db34ef
# ╠═d16696d0-ffa3-4228-a809-90a5ab38ed22
# ╠═9b416e0b-ad9d-47b1-931b-616e0e77857a
# ╠═a555e571-d387-4cf8-b33f-99da1ece9377
# ╠═174d87e9-abfb-4b76-b23b-fd2dbda0b399
# ╠═7397e45f-b910-464c-a3e9-9b3fef7e227e
# ╠═032152a6-957a-4593-bb85-09d10e16df75
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
