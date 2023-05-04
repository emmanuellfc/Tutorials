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
md"**Looping and counting**"

# ╔═╡ 95b85ed5-f9c3-4baf-b131-d9e12905f349
begin
	#word = "banana"
	#counter = 0
	#for letter in word
	#	if letter == 'a'
#			global counter += 1
#		end
#	end
#	println(counter)
end

# ╔═╡ 6b5b10b8-d8a9-4b29-b506-a412126500b1
md"**Exercise 8-5:**


Encapsulate this code in a function named count, and generalize it so that it accepts the string and the letter as arguments."

# ╔═╡ 22c5a56d-a647-4bc2-ad0c-597a2cffb06f
"""
Returns the number of times a given letter appears in a given string.
"""
function count(word::String, letter::Char)
	counter = []
	for x in word
		if x == letter
			push!(counter, 1)
		end
	end
	return sum(counter)
end

# ╔═╡ 00187fa4-ea11-493b-a8ba-d3f1dd22018c
count("emmanuel", 'e')

# ╔═╡ 4eea8c9c-2df6-4357-9d7b-a343bb615f1c
md"**The \in operator**"

# ╔═╡ 9a37be04-5180-4019-973d-5f87c9ea9bbd
'a' ∈ "banana"

# ╔═╡ ab31e23f-74c4-4fcc-992a-62b07458ad28
function inboth(word1, word2)
	for letter in word1
		if letter ∈ word2
			print(letter, " ")
		end
	end
end

# ╔═╡ cffc50a9-d99d-4215-9d79-e68422a18901
inboth("apples", "oranges")

# ╔═╡ 6067f1ea-b42d-4371-8a7e-fb5e25027cff
md"**Glossary**

* sequence: An ordered collection of values where each value is identified by an integer index.

* ASCII standard: A character encoding standard for electronic communication specifying 128 characters.

* Unicode standard: A computing industry standard for the consistent encoding, representation, and handling of text expressed in most of the world’s writing systems.

* index: An integer value used to select an item in a sequence, such as a character in a string. In Julia indices start from 1.

* UTF-8 encoding: A variable-width character encoding capable of encoding all 1,112,064 valid code points in Unicode using one to four 8-bit bytes.

* traverse: To iterate through the items in a sequence, performing a similar operation on each.

* slice: A part of a string specified by a range of indices.

* empty string: A string with no characters and length 0, represented by two quotation marks.

* immutable: The property of a sequence whose items cannot be changed.

* string interpolation: The process of evaluating a string containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values.

* search: A pattern of traversal that stops when it finds what it is looking for.

* counter: A variable used to count something, usually initialized to zero and then incremented"

# ╔═╡ 658a4677-5a4f-49f5-9c30-b796438a3cc8


# ╔═╡ 66f59d20-3f8e-4bfe-9be7-632e8ca6224b


# ╔═╡ 5bd5f1cf-8129-4647-863b-ae2338a15d8b


# ╔═╡ 54e84504-1a23-49df-a639-ecabe4077125


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
# ╟─72830f9c-e4f7-4811-84a4-e6168bd57939
# ╠═95b85ed5-f9c3-4baf-b131-d9e12905f349
# ╟─6b5b10b8-d8a9-4b29-b506-a412126500b1
# ╠═22c5a56d-a647-4bc2-ad0c-597a2cffb06f
# ╠═00187fa4-ea11-493b-a8ba-d3f1dd22018c
# ╟─4eea8c9c-2df6-4357-9d7b-a343bb615f1c
# ╠═9a37be04-5180-4019-973d-5f87c9ea9bbd
# ╠═ab31e23f-74c4-4fcc-992a-62b07458ad28
# ╠═cffc50a9-d99d-4215-9d79-e68422a18901
# ╟─6067f1ea-b42d-4371-8a7e-fb5e25027cff
# ╠═658a4677-5a4f-49f5-9c30-b796438a3cc8
# ╠═66f59d20-3f8e-4bfe-9be7-632e8ca6224b
# ╠═5bd5f1cf-8129-4647-863b-ae2338a15d8b
# ╠═54e84504-1a23-49df-a639-ecabe4077125
