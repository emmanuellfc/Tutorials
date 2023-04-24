### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 9b6ce463-6ed8-4f91-b4df-ebca7648efd6
using Statistics

# ╔═╡ 9d4a2a78-e2d5-11ed-0559-df60dde101ee
md"**List Comprehension**"

# ╔═╡ 0bbffcef-56c3-48bd-864e-0c0a6f627405
md" A typical form of a list comprehension is this: **[f(x) for x in A]**."

# ╔═╡ c5c7b6a5-cc72-4845-8a28-93c73dbd08c1
array1 = [(2n+1)^2 for n in 1:5]

# ╔═╡ ff6d7f0f-7d91-4862-bb80-e3019cf13911
array2 = [sqrt(i) for i in array1]

# ╔═╡ 90cad91e-6d0e-4350-b1cd-3bc132e83595
println(typeof(1:5), "   ", typeof(array1), "   ", typeof(array2))

# ╔═╡ 5cb680a3-d4de-4d33-a8bb-4a85d2aa19aa
begin
	@time begin 
		data = Float64[]
		for _ in 1:10^6
			group = Float64[]
			for _ in 1:5*10^2
				push!(group, rand())
			end
			push!(data, mean(group))
		end
		println("98% of the means lie in the estimated range:",
		(quantile(data, 0.01), quantile(data, 0.99)))
	end
end

# ╔═╡ 0101a8e9-fa65-4559-a0de-4008e01f156d


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "c2ebf593fb8fca52e25f227c4ea4799a3b858e2f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"
"""

# ╔═╡ Cell order:
# ╟─9d4a2a78-e2d5-11ed-0559-df60dde101ee
# ╟─0bbffcef-56c3-48bd-864e-0c0a6f627405
# ╠═c5c7b6a5-cc72-4845-8a28-93c73dbd08c1
# ╠═ff6d7f0f-7d91-4862-bb80-e3019cf13911
# ╠═90cad91e-6d0e-4350-b1cd-3bc132e83595
# ╠═9b6ce463-6ed8-4f91-b4df-ebca7648efd6
# ╠═5cb680a3-d4de-4d33-a8bb-4a85d2aa19aa
# ╠═0101a8e9-fa65-4559-a0de-4008e01f156d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
