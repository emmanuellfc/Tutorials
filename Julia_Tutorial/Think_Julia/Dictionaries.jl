### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ fe750fb2-eb49-11ed-2098-6b168a6a788c
md"**Dictionaries**

A dictionary is a mapping, is like an array, but more general. In an array, the indices have to be integers; in a dictionary they can be (almost) any type.

A dictionary contains a collection of indices, which are called keys, and a collection of values. Each key is associated with a single value. The association of a key and a value is called a key-value pair, or sometimes an item."

# ╔═╡ 16df9add-407f-4a05-9b04-da32c4eaaea6
eng2sp = Dict()

# ╔═╡ a2cbc67d-8ee4-4dd8-bb70-ea7c416cee37
eng2sp["one"] = "uno";

# ╔═╡ dbc861d6-e01b-498e-bdbe-85e219793bc4
eng2sp

# ╔═╡ 5f44a07a-0f27-496c-b68a-fea24d113db8
begin
	eng2sp["two"] = "dos";
	eng2sp["three"] = "tres";
	eng2sp
end

# ╔═╡ 85b576f8-d17d-41dd-a528-7aca176fc681
length(eng2sp)

# ╔═╡ bf63d951-95f2-4704-924d-034ee86d1a34
ks = keys(eng2sp); # Get the keys of the dictionary

# ╔═╡ 97534395-5ef4-4532-b058-6b1edcc25673
vs = values(eng2sp); # Get the values of the dictionary

# ╔═╡ 3f7af6ad-1ef8-4560-99b0-4d7dc5857dee
"one" ∈ ks

# ╔═╡ 00765627-2b03-40da-b132-03d8bf2e1b92
"uno" ∈ vs

# ╔═╡ 425a5989-3cab-48fd-aa11-138494d9a099
md"For dictionaries, Julia uses an algorithm called a hash table that has a remarkable property: the ∈ operator takes about the same amount of time no matter how many items are in the dictionary."

# ╔═╡ 99e485da-ab62-4d0f-a6be-6d4c8936e67f
function histogram(s)
	d = Dict()
	for c in s
		if c ∉ keys(d)
			d[c] = 1
		else
			d[c] += 1
		end
	end
	d
end

# ╔═╡ a696b97b-8be2-4f0d-a448-48f0e1197db9
bronto = histogram("brontosaurus")

# ╔═╡ 5791d85b-bdd0-47fc-b560-0b41513fc859
h = histogram("a")

# ╔═╡ ff9fbacb-a259-49f8-9232-f342049b28c3
get(h, 'a', 0)

# ╔═╡ bcd8efb3-8d1f-4f8c-981e-f3c71489d971
get(bronto, 'o', 0)

# ╔═╡ 644f7076-7ebe-48fa-9b7b-16b5f0904813
md"**Exercise 11-1:**
Use get to write histogram more concisely. You should be able to eliminate the if statement."

# ╔═╡ 4cb52de2-0664-4c30-9135-8b1fa5284887
function histogram2(s)
	d = Dict()
	for c in s
		d[c] = length(findall(c, s))
	end
	d
end

# ╔═╡ f4f17fc7-27cc-43c7-b74c-7002fca4cb72
histogram2("brontosaurus") == histogram("brontosaurus")

# ╔═╡ Cell order:
# ╟─fe750fb2-eb49-11ed-2098-6b168a6a788c
# ╠═16df9add-407f-4a05-9b04-da32c4eaaea6
# ╠═a2cbc67d-8ee4-4dd8-bb70-ea7c416cee37
# ╠═dbc861d6-e01b-498e-bdbe-85e219793bc4
# ╠═5f44a07a-0f27-496c-b68a-fea24d113db8
# ╠═85b576f8-d17d-41dd-a528-7aca176fc681
# ╠═bf63d951-95f2-4704-924d-034ee86d1a34
# ╠═97534395-5ef4-4532-b058-6b1edcc25673
# ╠═3f7af6ad-1ef8-4560-99b0-4d7dc5857dee
# ╠═00765627-2b03-40da-b132-03d8bf2e1b92
# ╟─425a5989-3cab-48fd-aa11-138494d9a099
# ╠═99e485da-ab62-4d0f-a6be-6d4c8936e67f
# ╠═a696b97b-8be2-4f0d-a448-48f0e1197db9
# ╠═5791d85b-bdd0-47fc-b560-0b41513fc859
# ╠═ff9fbacb-a259-49f8-9232-f342049b28c3
# ╠═bcd8efb3-8d1f-4f8c-981e-f3c71489d971
# ╟─644f7076-7ebe-48fa-9b7b-16b5f0904813
# ╠═4cb52de2-0664-4c30-9135-8b1fa5284887
# ╠═f4f17fc7-27cc-43c7-b74c-7002fca4cb72
