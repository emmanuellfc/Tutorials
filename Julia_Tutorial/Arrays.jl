### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ b65d1e86-ea95-11ed-0693-b77e36cb97fe
md"**Arrays**

An array is a sequence: like a string, an array is a sequence of values. In a string, the values are characters; in an array, they can be any type. The values in an array are called elements or sometimes items.

Arrays are mutable: the syntax for accessing the elements of an array is the same as for accessing the characters of a string—using the bracket operator."

# ╔═╡ 63beb82b-44e9-415a-8951-8d4dd7cc8ad9
cheeses = ["Cheddar", "Edam", "Gouda"];

# ╔═╡ d671fa51-c3d9-49e9-83cf-d3fd0f9c0b0d
"Edam" ∈ cheeses

# ╔═╡ 298eb615-e17c-4522-acd2-a43c67eadc10
"Brie" ∈ cheeses

# ╔═╡ 8ee91fa4-8b51-4a24-9fd4-ba113c6ba737
for cheese in cheeses
	println(cheese)
end

# ╔═╡ 7d5b00ea-13dc-41b7-be84-8c4d7752d073
md"If you want to write or update the elements, you need the indices. One technique is to use the built-in function eachindex"

# ╔═╡ a41c7b54-17c6-4d5b-9d9a-78e642a47999
numbers = [42, 123];

# ╔═╡ 4e51c02b-da19-4a8f-a545-42b16f38bc4e
for i in eachindex(numbers)
	numbers[i] = numbers[i] * 2
end

# ╔═╡ 1237f0b7-57e8-49a6-9ed6-92baf9fe011f
numbers

# ╔═╡ 66adc58f-3052-4b71-b8d3-c973201eeeb7
md"**Array slices**"

# ╔═╡ d013c4fe-49cd-4d70-997d-f384ca87360c
t = ['a', 'b', 'c', 'd', 'e', 'f'];

# ╔═╡ 289ed129-fea9-4121-bc75-8dea9e1a95d1
print(t[1:3])

# ╔═╡ 7d38b2e6-d316-4a54-8bb6-75803067e732
print(t[3:end])

# ╔═╡ 28c18ccf-f11a-4f29-b020-30e9fa9c5da2
print(t[:])

# ╔═╡ 6042b25c-1c61-46ff-839d-e242810df511
t[2:3] = ['x', 'y']

# ╔═╡ 4c6d7318-556a-47d5-a01b-0f4dbc08a1ab
t

# ╔═╡ 248bd64c-4ee9-4932-a277-274b7ef0186c
md"**Array library**"

# ╔═╡ 31b0e61a-a4bc-420c-837e-55e15c1495e8
begin
	t1 = ['a', 'b', 'c']
	push!(t1, 'd')
	print(t1)
end

# ╔═╡ 543a9ba4-da28-4729-af1c-4cd63535d619
begin
	t2 = ['a', 'b', 'c']
	t3 = ['d', 'e']
	append!(t2, t3)
	print(t2)
end

# ╔═╡ fc6c24f8-d4e4-433e-b906-d792f513b068
begin
	t4 = ['d', 'c', 'e', 'b', 'a'];
	sort!(t4)
	print(t4)
end

# ╔═╡ ff2aab00-13cd-43e9-be31-bb18487c26eb
begin
	t5 = ['d', 'c', 'e', 'b', 'a'];
	t6 = sort(t5)
	print(t5)
	println("")
	print(t6)
end

# ╔═╡ 61445273-aa6d-463a-84c3-0d47b59b5342
md"As a style convention in Julia, ! is appended to names of functions that modify their arguments."

# ╔═╡ 3868d4d3-7969-4b85-9344-320c3bcceefb
md"**Map, Filter and Reduce**"

# ╔═╡ 08edd772-1979-4c47-a057-4b5dc0319ad5
begin
	v = [1, 2, 3, 4];
	sum(v)
end

# ╔═╡ 4a9aa200-9bb3-4c18-817c-828e8276abff
function capitalizeall(t)
    res = []
    for s in t
        push!(res, uppercase(s))
    end
    res
end

# ╔═╡ 95098ab7-eb6f-4a3f-9c56-b80059b82a8b
md"An operation like capitalizeall is sometimes called a map because it “maps” a function (in this case uppercase) onto each of the elements in a sequence."

# ╔═╡ cc2cc09c-7d52-4bf6-a4cc-332df6e432dd
capitalizeall("emmanuel")

# ╔═╡ eb8a906c-8a03-477a-8f83-aba82eeea5e1
function onlyupper(t)
    res = []
    for s in t
        if s == uppercase(s)
            push!(res, s)
        end
    end
    res
end

# ╔═╡ e58d4be9-a10f-43dc-af25-c2905367f0a3
md"An operation like onlyupper is called a filter because it selects some of the elements and filters out the others."

# ╔═╡ ebc7f4c7-2151-4513-a2e6-feba2707ad25
onlyupper("EmmanueL")

# ╔═╡ 39f9bec7-24e2-451d-ac76-8cc9686d308d
md"**Dot syntax**

For every binary operator, like ^, there is a corresponding dot operator, like .^, that is automatically defined to perform the operation element-by-element on arrays."

# ╔═╡ 15ea84ac-d6a5-48da-a3cf-dd1837ba348d
print([1, 2, 3].^3)

# ╔═╡ 8cf6a8b0-2b45-45fe-8272-44f1f06a689b
md"Any Julia function f can be applied elementwise to any array with the dot syntax."

# ╔═╡ 5fd383cf-cb60-4479-b766-eb26ed7b5fdd
tx = uppercase.(["abc", "def", "ghi"]);

# ╔═╡ e8895df9-51eb-4120-92c9-0d60f936f890
print(tx)

# ╔═╡ bc8d7178-e34c-4059-8d3e-07c2ff6a1fca


# ╔═╡ c94efd74-8378-4759-a9b3-02ba967651de


# ╔═╡ fb079915-35da-4a10-ab8f-5b06179cb9d7


# ╔═╡ 19e69eb1-ab89-44f6-9b62-d5f8f9cf05d1


# ╔═╡ a3070a5f-09b9-4c33-ae22-5b64b41fd7e2


# ╔═╡ Cell order:
# ╟─b65d1e86-ea95-11ed-0693-b77e36cb97fe
# ╠═63beb82b-44e9-415a-8951-8d4dd7cc8ad9
# ╠═d671fa51-c3d9-49e9-83cf-d3fd0f9c0b0d
# ╠═298eb615-e17c-4522-acd2-a43c67eadc10
# ╠═8ee91fa4-8b51-4a24-9fd4-ba113c6ba737
# ╟─7d5b00ea-13dc-41b7-be84-8c4d7752d073
# ╠═a41c7b54-17c6-4d5b-9d9a-78e642a47999
# ╠═4e51c02b-da19-4a8f-a545-42b16f38bc4e
# ╠═1237f0b7-57e8-49a6-9ed6-92baf9fe011f
# ╟─66adc58f-3052-4b71-b8d3-c973201eeeb7
# ╠═d013c4fe-49cd-4d70-997d-f384ca87360c
# ╠═289ed129-fea9-4121-bc75-8dea9e1a95d1
# ╠═7d38b2e6-d316-4a54-8bb6-75803067e732
# ╠═28c18ccf-f11a-4f29-b020-30e9fa9c5da2
# ╠═6042b25c-1c61-46ff-839d-e242810df511
# ╠═4c6d7318-556a-47d5-a01b-0f4dbc08a1ab
# ╟─248bd64c-4ee9-4932-a277-274b7ef0186c
# ╠═31b0e61a-a4bc-420c-837e-55e15c1495e8
# ╠═543a9ba4-da28-4729-af1c-4cd63535d619
# ╠═fc6c24f8-d4e4-433e-b906-d792f513b068
# ╠═ff2aab00-13cd-43e9-be31-bb18487c26eb
# ╟─61445273-aa6d-463a-84c3-0d47b59b5342
# ╟─3868d4d3-7969-4b85-9344-320c3bcceefb
# ╠═08edd772-1979-4c47-a057-4b5dc0319ad5
# ╠═4a9aa200-9bb3-4c18-817c-828e8276abff
# ╟─95098ab7-eb6f-4a3f-9c56-b80059b82a8b
# ╠═cc2cc09c-7d52-4bf6-a4cc-332df6e432dd
# ╠═eb8a906c-8a03-477a-8f83-aba82eeea5e1
# ╟─e58d4be9-a10f-43dc-af25-c2905367f0a3
# ╠═ebc7f4c7-2151-4513-a2e6-feba2707ad25
# ╟─39f9bec7-24e2-451d-ac76-8cc9686d308d
# ╠═15ea84ac-d6a5-48da-a3cf-dd1837ba348d
# ╟─8cf6a8b0-2b45-45fe-8272-44f1f06a689b
# ╠═5fd383cf-cb60-4479-b766-eb26ed7b5fdd
# ╠═e8895df9-51eb-4120-92c9-0d60f936f890
# ╠═bc8d7178-e34c-4059-8d3e-07c2ff6a1fca
# ╠═c94efd74-8378-4759-a9b3-02ba967651de
# ╠═fb079915-35da-4a10-ab8f-5b06179cb9d7
# ╠═19e69eb1-ab89-44f6-9b62-d5f8f9cf05d1
# ╠═a3070a5f-09b9-4c33-ae22-5b64b41fd7e2
