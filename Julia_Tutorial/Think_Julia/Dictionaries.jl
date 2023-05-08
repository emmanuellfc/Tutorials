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

# ╔═╡ 581eeae9-4094-440f-8865-5ab17e380049
function printhist(h)
	for c in keys(h)
		println(c, " ", h[c])
	end
end

# ╔═╡ ff9fbacb-a259-49f8-9232-f342049b28c3
get(h, 'a', 0)

# ╔═╡ 4de8b99e-2a2e-40eb-9200-94a8a0eb8f69
printhist(h)

# ╔═╡ ac7e40c2-68c4-461d-bf65-fc96ba401e97
function reverselookup(d, v)
    for k in keys(d)
        if d[k] == v
            return k
        end
    end
    error("LookupError")
end

# ╔═╡ dd5360d1-dfed-406f-8d55-842efa0348d2
md"The error function is used to produce an ErrorException that interrupts the normal flow of control. In this case it has the message *LookupError*, indicating that a key does not exist."

# ╔═╡ 745dde34-f48d-4249-8889-9220cce7ada7
key = reverselookup(h, 2)

# ╔═╡ e6ce19b2-d2e9-4b66-88f3-0c00eef04a12
key2 = reverselookup(h, 3)

# ╔═╡ 3bb23938-f6c2-4a04-a28b-06c4d7ada192
function invertdict(d)
    inverse = Dict()
    for key in keys(d)
        val = d[key]
        if val ∉ keys(inverse)
            inverse[val] = [key]
        else
            push!(inverse[val], key)
        end
    end
    inverse
end

# ╔═╡ e2657f4a-3063-4e39-9b72-86a54ba121d1
hist = histogram("parrot");

# ╔═╡ ff736dc7-c62f-4fa2-bf55-98c8e9a1cc7f
inverse = invertdict(hist)

# ╔═╡ 4022ce19-29bb-4e70-8ec3-a369263e6249
known = Dict(0=>0, 1=>1)

# ╔═╡ 149d29fc-312b-46bc-b328-94967e9c9dce
function fibonacci(n)
    if n ∈ keys(known)
        return known[n]
    end
    res = fibonacci(n-1) + fibonacci(n-2)
    known[n] = res
    res
end

# ╔═╡ 35db0988-4c24-4383-b3c2-e9baaba1d4b7
fibonacci(10)

# ╔═╡ 2322f360-b2e6-43ce-97b1-ed6190508af4
md"Variables in Main are sometimes called global because they can be accessed from any function.

It is common to use global variables for flags; that is, Boolean variables that indicate (“flag”) whether a condition is true.
"

# ╔═╡ c5c09f2e-b606-4ffe-b5c5-5994b5a447c2
begin
	verbose = true
	function example1()
		if verbose
			println("Running example1")
		end
	end
end

# ╔═╡ 492052c2-ecc5-4e1b-abb1-9189edf10ecc
example1()

# ╔═╡ d686d487-b600-4278-9316-708f7e36b5c5
md"**Glossary**

* dictionary: A mapping from keys to their corresponding values.

* key: An object that appears in a dictionary as the first part of a key-value pair.

* value: An object that appears in a dictionary as the second part of a key-value pair. This is more specific than our previous use of the word “value.”

* key-value pair: The representation of the mapping from a key to a value.

* item: In a dictionary, another name for a key-value pair.

* mapping: A relationship in which each element of one set corresponds to an element of another set.

* hash table: The algorithm used to implement Julia dictionaries.

* implementation: A way of performing a computation.

* lookup: A dictionary operation that takes a key and finds the corresponding value.

* reverse lookup: A dictionary operation that takes a value and finds one or more keys that map to it.

* singleton: An array (or other sequence) with a single element.

* hashable: A type that has a hash function.

* hash function: A function used by a hash table to compute the location for a key.

* call graph: A diagram that shows every frame created during the execution of a program, with an arrow from each caller to each callee.

* memo: A computed value stored to avoid unnecessary future computation.

* global variable: A variable defined outside a function. Global variables can be accessed from any function.

* flag: A Boolean variable used to indicate whether a condition is true.

* declaration: A statement like global that tells the interpreter something about a variable.

* global statement: A statement that declares a variable name global.

* constant global variable: A global variable that cannot be reassigned."

# ╔═╡ cc73dd9b-fd7e-4d7a-8b7d-0b481dbf126e
h = histogram("parrot");

# ╔═╡ 5791d85b-bdd0-47fc-b560-0b41513fc859
# ╠═╡ disabled = true
#=╠═╡
h = histogram("a")
  ╠═╡ =#

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
# ╠═581eeae9-4094-440f-8865-5ab17e380049
# ╠═cc73dd9b-fd7e-4d7a-8b7d-0b481dbf126e
# ╠═4de8b99e-2a2e-40eb-9200-94a8a0eb8f69
# ╠═ac7e40c2-68c4-461d-bf65-fc96ba401e97
# ╟─dd5360d1-dfed-406f-8d55-842efa0348d2
# ╠═745dde34-f48d-4249-8889-9220cce7ada7
# ╠═e6ce19b2-d2e9-4b66-88f3-0c00eef04a12
# ╠═3bb23938-f6c2-4a04-a28b-06c4d7ada192
# ╠═e2657f4a-3063-4e39-9b72-86a54ba121d1
# ╠═ff736dc7-c62f-4fa2-bf55-98c8e9a1cc7f
# ╠═4022ce19-29bb-4e70-8ec3-a369263e6249
# ╠═149d29fc-312b-46bc-b328-94967e9c9dce
# ╠═35db0988-4c24-4383-b3c2-e9baaba1d4b7
# ╟─2322f360-b2e6-43ce-97b1-ed6190508af4
# ╠═c5c09f2e-b606-4ffe-b5c5-5994b5a447c2
# ╠═492052c2-ecc5-4e1b-abb1-9189edf10ecc
# ╟─d686d487-b600-4278-9316-708f7e36b5c5
