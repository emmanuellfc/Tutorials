### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ ebb90254-ef39-11ed-38ad-73096dab7905
md"**Tuples**

A tuple is a sequence of values. The values can be of any type, and they are indexed by integers, so in that respect tuples are a lot like arrays. The important difference is that tuples are immutable and that each element can have its own type."

# ╔═╡ 7e299e9a-d964-4d47-84a7-aeb3c16a0c12
t = ('a', 'b', 'c', 'd', 'e') 

# ╔═╡ 4135d10c-62c7-44df-8e89-10dfa0041cb3
md"To create a tuple with a single element, you have to include a final comma:"

# ╔═╡ 5ba412c3-94d9-4fbf-ba03-887141e095ae
t1 = ('a',)

# ╔═╡ e7e3f718-710a-480a-a33b-2f565af79e80
t3 = tuple(1, 'a', pi)

# ╔═╡ 3472a02c-a3a9-4bb2-ad00-3ee14918c310
md"The bracket operator indexes an element, and the slice operator selects a range of elements:"

# ╔═╡ bdbfc7fd-d9d3-4882-8f53-c9284d70bb5e
t[1]

# ╔═╡ 51b3e247-41dc-4f1c-b18c-526efbc3b14b
t[2:4]

# ╔═╡ 160ea411-8b8e-4121-8238-fdb91d4d0f2e
md"Remember, tuples are **immutable!**

The relational operators work with tuples and other sequences. Julia starts by comparing the first element from each sequence. If they are equal, it goes on to the next elements, and so on until it finds elements that differ."

# ╔═╡ f639cfba-0f8a-4041-a9a0-71d0314c539a
(0, 1, 2) < (0, 3, 3)

# ╔═╡ 6ba13858-8186-4213-aaef-36bcc40f2ca8
md"**Tuple assignment**"

# ╔═╡ 4fde7b52-3035-4575-b1a6-bab799fdc55b
#a, b = b, a

# ╔═╡ c2e38905-a69a-48b0-9aad-33a5217f35a5
begin
	(a, b) = (1, 2, 3)
	println((a,b))
	println(a)
	println(b)
end

# ╔═╡ cc61dba4-dd33-493e-8c7e-2eafad743e02
begin
	addr = "eq.emmanuel.137@gmail.com";
	uname, domain = split(addr, '@');
	println(uname)
	println(domain)
end

# ╔═╡ 0b2b80ee-dae1-4067-8917-f4491213df45
begin
	q, r = divrem(7, 3)
	@show q r
end

# ╔═╡ 4fb1f7cc-1044-4870-8701-1825edcaf564
md"Example of a function that returns a tuple:"

# ╔═╡ 431d3e16-a858-4109-8708-b4b5e129a36a
function minmax(t)
	minimum(t), max(t)
end

# ╔═╡ ce119f1d-40e0-4b15-b954-1cd3ae6a74d8
md"Functions can take a variable number or arguments. A parameter name that ends with ... gathers arguments into a tuple."

# ╔═╡ 4e141804-1c79-46e0-9d0e-28bfa358f70e
function printall(args...)
	println(args)
end

# ╔═╡ 38082503-eea5-4a88-ac06-fa9feda3285f
printall(1, 2.0, '3')

# ╔═╡ 2294c8ce-2d40-45ea-91b0-365c55f338d3
function sumall(s)
	sum(s)
end

# ╔═╡ 1becfd44-b392-4426-838d-31af856dbe61
begin
	s = (1, 2, 3, 4);
	sumall(s)
	#sum(s)
end

# ╔═╡ e81c8fb1-d816-4623-9ba2-2b83b514ffba
md"**Arrrays and tuples**

zip is a built-in function that takes two or more sequences and returns a collection of tuples where each tuple contains one element from each sequence."

# ╔═╡ ca457df9-950f-4290-bbb0-ccccfdd5d73c
begin
	r1 = "abc"
	s1 = [1, 2, 3]
	zip(r1, s1)
	for pair in zip(r1, s1)
		println(pair)
	end
end

# ╔═╡ 7a683d6a-5b78-46da-8241-ba1f02c1e4ea
md"A zip object is kind of an iterator, which is any object that iterates through a sequence."

# ╔═╡ 5dd2288b-f601-4dd5-bda1-669ebc676f6c
collect(zip(r1, s1))

# ╔═╡ 9518cb68-5905-4f63-9802-f1f0eac5937d
collect(zip("Anne", "Elk"))

# ╔═╡ eee67d63-7f50-4de4-9b40-1949f7de24cf
begin
	tn = [('a', 1),('b', 2),('c', 3)]
	for (letter, number) in tn
		println(number, " ", letter)
	end
end

# ╔═╡ 658b5cf8-0b39-4bfe-89e9-58af51d3f3ec
md"If you combine zip, for and typle assignments, you get a useful idiom for traversing two(or more) sequences at the same time."

# ╔═╡ 22afdcda-77a6-4146-b500-8ee4fb0b2b89
function hasmatch(m1, m2)
	for (x, y) in zip(m1, m2)
		if x == y
			return true
		end
	end
	false
end

# ╔═╡ 9b8cffc6-8362-4958-ac27-6983c53da812
md"If you need to traverse the elements of a sequence and their indices, you can use the built-in function enumerate:"

# ╔═╡ e9272c4f-b458-41de-9053-05acd2f7c73d
for (index, element) in enumerate("abc")
	println(index, " ", element)
end

# ╔═╡ 53c95e5e-ae8c-45c6-9e34-d5f7d9253084
md"**Dictionaries and tuples**"

# ╔═╡ a3cb3765-6019-4703-9e18-bbaa8fec11f3
begin
	d = Dict('a'=>1, 'b'=> 2, 'c'=>3)
	for (key, value) in d
		println(key, " ", value)
	end
end

# ╔═╡ cd7360c7-33d0-4253-bbed-f985141eee8b
md"Going in the other direction, you can use an array of tuples to initialize a new dicionary."

# ╔═╡ b6c7813c-9871-48e1-b346-5930af870bb8
begin
	nt = [('a', 1), ('b', 2), ('c', 3)]
	nd = Dict(nt)
end

# ╔═╡ de49609a-36cd-4d63-8bf9-b0a22ca37b35
md"Combining Dict with zip, yields a concise way to create a dictionary:"

# ╔═╡ 235623c6-5726-49e7-93fc-b724b84601f1
z = Dict(zip("abc", 1:3))

# ╔═╡ 825770aa-4b48-433c-bf83-1eb4cf423e88
md"Arrays, dictionaries and tuples are examples of data structures; in this lecture we are starting to see compund data structures, like arrays of tuples, or dictionaries that contain tuples as keys and arrays as values. Compund data structures are useful, but they are prone to what I call *shape errors.*"

# ╔═╡ d7aaa85c-4d5e-417d-b843-1f6be2abe908
md"**Glossary**

* tuple: An immutable sequence of elements where every element can have its own type.

* tuple assignment: An assignment with a sequence on the right side and a tuple of variables on the left. The right side is evaluated and then its elements are assigned to the variables on the left.

* gather: The operation of assembling a variable-length argument tuple.

* scatter: The operation of treating a sequence as a list of arguments.

* zip object: The result of calling a built-in function zip, an object that iterates through a sequence of tuples.

* iterator: An object that can iterate through a sequence, but that does not provide array operators and functions.

* data structure: A collection of related values, often organized in arrays, dictionaries, tuples, etc.

* shape error: An error caused because a value has the wrong shape; that is, the wrong type or size."

# ╔═╡ f65df7db-e2c9-4dc4-b600-98e319cb61d8


# ╔═╡ 5f5f6d34-257c-40e5-96c3-5813eb55a0ec


# ╔═╡ c9e64daf-a3aa-46fd-9bef-72c31a392b3b


# ╔═╡ Cell order:
# ╟─ebb90254-ef39-11ed-38ad-73096dab7905
# ╠═7e299e9a-d964-4d47-84a7-aeb3c16a0c12
# ╟─4135d10c-62c7-44df-8e89-10dfa0041cb3
# ╠═5ba412c3-94d9-4fbf-ba03-887141e095ae
# ╠═e7e3f718-710a-480a-a33b-2f565af79e80
# ╟─3472a02c-a3a9-4bb2-ad00-3ee14918c310
# ╠═bdbfc7fd-d9d3-4882-8f53-c9284d70bb5e
# ╠═51b3e247-41dc-4f1c-b18c-526efbc3b14b
# ╟─160ea411-8b8e-4121-8238-fdb91d4d0f2e
# ╠═f639cfba-0f8a-4041-a9a0-71d0314c539a
# ╟─6ba13858-8186-4213-aaef-36bcc40f2ca8
# ╠═4fde7b52-3035-4575-b1a6-bab799fdc55b
# ╠═c2e38905-a69a-48b0-9aad-33a5217f35a5
# ╠═cc61dba4-dd33-493e-8c7e-2eafad743e02
# ╠═0b2b80ee-dae1-4067-8917-f4491213df45
# ╟─4fb1f7cc-1044-4870-8701-1825edcaf564
# ╠═431d3e16-a858-4109-8708-b4b5e129a36a
# ╟─ce119f1d-40e0-4b15-b954-1cd3ae6a74d8
# ╠═4e141804-1c79-46e0-9d0e-28bfa358f70e
# ╠═38082503-eea5-4a88-ac06-fa9feda3285f
# ╠═2294c8ce-2d40-45ea-91b0-365c55f338d3
# ╠═1becfd44-b392-4426-838d-31af856dbe61
# ╟─e81c8fb1-d816-4623-9ba2-2b83b514ffba
# ╠═ca457df9-950f-4290-bbb0-ccccfdd5d73c
# ╟─7a683d6a-5b78-46da-8241-ba1f02c1e4ea
# ╠═5dd2288b-f601-4dd5-bda1-669ebc676f6c
# ╠═9518cb68-5905-4f63-9802-f1f0eac5937d
# ╠═eee67d63-7f50-4de4-9b40-1949f7de24cf
# ╟─658b5cf8-0b39-4bfe-89e9-58af51d3f3ec
# ╠═22afdcda-77a6-4146-b500-8ee4fb0b2b89
# ╟─9b8cffc6-8362-4958-ac27-6983c53da812
# ╠═e9272c4f-b458-41de-9053-05acd2f7c73d
# ╟─53c95e5e-ae8c-45c6-9e34-d5f7d9253084
# ╠═a3cb3765-6019-4703-9e18-bbaa8fec11f3
# ╟─cd7360c7-33d0-4253-bbed-f985141eee8b
# ╠═b6c7813c-9871-48e1-b346-5930af870bb8
# ╟─de49609a-36cd-4d63-8bf9-b0a22ca37b35
# ╠═235623c6-5726-49e7-93fc-b724b84601f1
# ╟─825770aa-4b48-433c-bf83-1eb4cf423e88
# ╟─d7aaa85c-4d5e-417d-b843-1f6be2abe908
# ╠═f65df7db-e2c9-4dc4-b600-98e319cb61d8
# ╠═5f5f6d34-257c-40e5-96c3-5813eb55a0ec
# ╠═c9e64daf-a3aa-46fd-9bef-72c31a392b3b
