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


# ╔═╡ 4e141804-1c79-46e0-9d0e-28bfa358f70e


# ╔═╡ 38082503-eea5-4a88-ac06-fa9feda3285f


# ╔═╡ 3a0ae340-3018-4d16-a071-bae09e6476e3


# ╔═╡ a10dc257-6344-46fe-b8fc-ae58d1ad7f9c


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
# ╠═ce119f1d-40e0-4b15-b954-1cd3ae6a74d8
# ╠═4e141804-1c79-46e0-9d0e-28bfa358f70e
# ╠═38082503-eea5-4a88-ac06-fa9feda3285f
# ╠═3a0ae340-3018-4d16-a071-bae09e6476e3
# ╠═a10dc257-6344-46fe-b8fc-ae58d1ad7f9c
