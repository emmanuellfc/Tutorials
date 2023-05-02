### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 9d1c65f0-e921-11ed-2194-07bce6870c6a
md"**Strings**

A string is a sequence, which means it is an ordered collection of other values."

# ╔═╡ 1ec895e7-546e-4736-a7c7-5506ae0e60ad
typeof('🍌')

# ╔═╡ 05fd4de9-fbec-4471-9f4a-946fee7f1524
fruits = "🍌 🍎 🍐"

# ╔═╡ c9273035-b245-499e-8ea1-29d85f017591
length(fruits)

# ╔═╡ 9834f613-edb7-4f08-8ab2-2d9f9b7814aa
fruits[5]

# ╔═╡ 2e24da5d-155f-4b74-94ec-5484c25712c1
md"Strings are encoded using UTF-8 encoding. UTF-8 is a variable-width encoding, meaning that not all characters are encoded in the same number of bytes."

# ╔═╡ b1836024-2d4a-41d7-9e6c-2f78a6427939
sizeof('🍌')

# ╔═╡ 5cacbd64-9515-4883-9833-4a4c14e1a8ad
md"Because an emoji is encoded in 4 bytes and string indexing is byte-based, the fifth element of fruits is a SPACE."

# ╔═╡ cb799787-42e3-466c-a7b7-744b6bc00677
begin 
	index = firstindex(fruits)
	while index <= sizeof(fruits)
    	letter = fruits[index]
    	println(letter)
    	global index = nextind(fruits, index)
	end
end

# ╔═╡ 66cc0e38-1f0f-4c38-a85d-a24843a3759e
md"**Exercise 8-1**:


Write a function that takes a string as an argument and displays the letters backward, one per line.

"

# ╔═╡ bea81c71-f4ee-4d86-a691-f1112563e837
function backward(x::String)
	x_len = length(x)
	for index in 1:x_len
		y = -index + x_len + 1
		letter = x[y]
		println(letter)
	end
end

# ╔═╡ 670de119-c3eb-4f76-b53d-91dad2b0a0da
backward("Emmanuel")

# ╔═╡ 9987c0e3-e4c1-4d13-aadf-6aea842ffe55
for letter in fruits
	println(letter)
end

# ╔═╡ fb3b8f90-be29-4d7b-8c3a-ac501cfb1767
begin
	prefixes = "JKLMNOPQ"
	suffix = "ack"
	for letter in prefixes
		println(letter * suffix)
	end
end

# ╔═╡ 2991a862-6853-4795-967e-0afa0d123129
function ducking(x)
	sufix = "ack"
	for letter in x
		if letter != 'Q'
			println(letter * suffix)
		else
			println(letter * 'u' * suffix )
			end
	end
end

# ╔═╡ 85f57b1c-e9a7-40c5-afb0-583ddab37d43
ducking("JKLMNOPQ")

# ╔═╡ cd16b234-f873-4ad6-9190-3f2c2d1bdfaf
md"**String Slices**

A segment of a string is called a slice. Selecting a slice is similar to selecting a character."

# ╔═╡ 22ce114e-e116-4694-863f-a54b3aae28e1
begin
	str = "Julius Caesar"
	str[7:end]
end

# ╔═╡ 8b172570-98e0-41ef-9ee2-621fe215cc08
str[:]

# ╔═╡ 3969b2df-433d-45f8-99bf-8caae31ad184
md"**Strings are immutable!!!**

**String Interpolation**

Constructing strings using concatenation can become a bit cumbersome. To reduce the need for these verbose calls to string or repeated multiplications, Julia allows string interpolation using $"

# ╔═╡ f64d00fd-d127-431f-9e41-6ebe8c5abb88
begin
	greet = "Hello"
	whom = "World"
	"$greet, $(whom)!"
end

# ╔═╡ 06085eef-b3d2-4f17-8618-d39613925dc6
function find(word, letter)
    index = firstindex(word)
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end

# ╔═╡ 72830f9c-e4f7-4811-84a4-e6168bd57939


# ╔═╡ ab31e23f-74c4-4fcc-992a-62b07458ad28


# ╔═╡ Cell order:
# ╟─9d1c65f0-e921-11ed-2194-07bce6870c6a
# ╠═1ec895e7-546e-4736-a7c7-5506ae0e60ad
# ╠═05fd4de9-fbec-4471-9f4a-946fee7f1524
# ╠═c9273035-b245-499e-8ea1-29d85f017591
# ╠═9834f613-edb7-4f08-8ab2-2d9f9b7814aa
# ╟─2e24da5d-155f-4b74-94ec-5484c25712c1
# ╠═b1836024-2d4a-41d7-9e6c-2f78a6427939
# ╟─5cacbd64-9515-4883-9833-4a4c14e1a8ad
# ╠═cb799787-42e3-466c-a7b7-744b6bc00677
# ╟─66cc0e38-1f0f-4c38-a85d-a24843a3759e
# ╠═bea81c71-f4ee-4d86-a691-f1112563e837
# ╠═670de119-c3eb-4f76-b53d-91dad2b0a0da
# ╠═9987c0e3-e4c1-4d13-aadf-6aea842ffe55
# ╠═fb3b8f90-be29-4d7b-8c3a-ac501cfb1767
# ╠═2991a862-6853-4795-967e-0afa0d123129
# ╠═85f57b1c-e9a7-40c5-afb0-583ddab37d43
# ╟─cd16b234-f873-4ad6-9190-3f2c2d1bdfaf
# ╠═22ce114e-e116-4694-863f-a54b3aae28e1
# ╠═8b172570-98e0-41ef-9ee2-621fe215cc08
# ╟─3969b2df-433d-45f8-99bf-8caae31ad184
# ╠═f64d00fd-d127-431f-9e41-6ebe8c5abb88
# ╠═06085eef-b3d2-4f17-8618-d39613925dc6
# ╠═72830f9c-e4f7-4811-84a4-e6168bd57939
# ╠═ab31e23f-74c4-4fcc-992a-62b07458ad28
