### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ ebf6fe76-f43c-11ed-1140-530994084e89
md"**Files**"

# ╔═╡ 4166e718-cefa-4136-8991-1551b80a74c8
fout = open("output.txt", "w")

# ╔═╡ dfae2c70-07ba-4d05-b471-0d7e7d9976a8
line1 = "This here's the wattle, \n";

# ╔═╡ 57a4e73e-dbe7-4efb-bfb7-629a50c4ab1a
write(fout, line1)

# ╔═╡ 4aa8284c-fdec-4d26-a8a1-e7a6f490bb02
line2 = "the emblem of our land.\n";

# ╔═╡ 2b282d9f-26af-42e9-be67-e9bfa8f7231f
write(fout, line2)

# ╔═╡ 2b0b22c0-dc29-4350-8a0d-70b262fe596b
close(fout)

# ╔═╡ 70769822-4f97-4b87-81fa-0a0a4a60f545
camels = 42;

# ╔═╡ 2e73f425-f4c5-48b5-b8af-f6e79608c23d
println(fout, "I have spotted $camels camels.")

# ╔═╡ a93ca0c7-c438-4b0a-871d-99ea5cb4d2d4
cwd = pwd()

# ╔═╡ a30d5a16-8f14-4545-a0fe-e66179113bec
ispath("output.txt")

# ╔═╡ c104a220-aa45-441b-8b23-8479c631da3e
isdir("output.txt")

# ╔═╡ 76e78865-edfe-47ef-ba85-27b1fa8a9634
readdir(cwd)

# ╔═╡ cc69222c-5cc5-4f15-a6e1-55c1ae8ae016
function walk(dirname)
	for name in readdir(dirname)
		path = joinpath(dirname, name)
		if isfile(path)
			println(path)
		else
			walk(path)
		end
	end
end

# ╔═╡ e435f25d-4668-4c6d-9334-03474410e660
md"""
This is a markdown
"""

# ╔═╡ Cell order:
# ╟─ebf6fe76-f43c-11ed-1140-530994084e89
# ╠═4166e718-cefa-4136-8991-1551b80a74c8
# ╠═dfae2c70-07ba-4d05-b471-0d7e7d9976a8
# ╠═57a4e73e-dbe7-4efb-bfb7-629a50c4ab1a
# ╠═4aa8284c-fdec-4d26-a8a1-e7a6f490bb02
# ╠═2b282d9f-26af-42e9-be67-e9bfa8f7231f
# ╠═2b0b22c0-dc29-4350-8a0d-70b262fe596b
# ╠═70769822-4f97-4b87-81fa-0a0a4a60f545
# ╠═2e73f425-f4c5-48b5-b8af-f6e79608c23d
# ╠═a93ca0c7-c438-4b0a-871d-99ea5cb4d2d4
# ╠═a30d5a16-8f14-4545-a0fe-e66179113bec
# ╠═c104a220-aa45-441b-8b23-8479c631da3e
# ╠═76e78865-edfe-47ef-ba85-27b1fa8a9634
# ╠═cc69222c-5cc5-4f15-a6e1-55c1ae8ae016
# ╟─e435f25d-4668-4c6d-9334-03474410e660
