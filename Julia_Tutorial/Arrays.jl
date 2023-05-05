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
md"**Deleting and inserting Elements**"

# ╔═╡ c94efd74-8378-4759-a9b3-02ba967651de
begin
	ty = ['a', 'b', 'c'];
	splice!(ty, 2) # modifies the array and returns the element that was removed.
	print(ty)
end

# ╔═╡ fb079915-35da-4a10-ab8f-5b06179cb9d7
begin
	tz = ['a', 'b', 'c'];
	pop!(tz) # deletes the last element
	print(tz)
end

# ╔═╡ 19e69eb1-ab89-44f6-9b62-d5f8f9cf05d1
begin
	tw = ['a', 'b', 'c'];
	popfirst!(tw) # deletes the first element
	print(tw)
end

# ╔═╡ a3070a5f-09b9-4c33-ae22-5b64b41fd7e2
md"**Arrays and strings**

A string is a sequence of characters and an array is a sequence of values, but an array of characters is not the same as a string"

# ╔═╡ 8127a61a-a1a9-44f0-b183-f61d2b91b2c7
print(collect("spam")) #collect function breaks a string or another sequence into individual elements

# ╔═╡ 3a830de1-38c7-4f82-a4ff-75e372d45a36
md"If you want to break a string into words, you can use the split function:"

# ╔═╡ d425afab-7e42-4e98-80ea-d251bd338af0
print(split("pining for the fjords"))

# ╔═╡ 4d6c6fe5-5435-44ae-9c3b-cf0a501805ab


# ╔═╡ 85209692-6825-4439-981e-c95dce11d7ef
md"join is the inverse of split"

# ╔═╡ 9e73631b-1841-4e8d-a93d-9cbe38d2d7f4
begin
	words = ["pining", "for", "the", "fjords"];
	s = join(words, ' ')
end

# ╔═╡ 28abd185-8c53-4fd9-939e-259ed2f48d3b
md"**Objects and values**
An object is something a variable can refer to. Until now, you might have used “object” and “value” interchangeably.
To check whether two variables refer to the same object, you can use the ≡ (\equiv TAB) or === operator:"

# ╔═╡ 50034e7d-0582-44d1-b4e0-87d37448dff3
begin
	a = "banana"
	b = "banana"
	a ≡ b
end

# ╔═╡ 8a449b2c-bc4e-4cd9-85c9-a8aad8aa0b2a
begin
	x = [1, 2, 3];
	y = [1, 2, 3];
	x ≡ y
end

# ╔═╡ 84e4efb6-1b8c-4b70-aa5a-fe675e8dfed6
md"In this case we would say that the two arrays are equivalent, because they have the same elements, but not identical, because they are not the same object. If two objects are identical, they are also equivalent, but if they are equivalent, they are not necessarily identical."

# ╔═╡ 46bf8fe4-8c96-4a45-8046-4b6b32687a8a
md"**Array arguments**"

# ╔═╡ f9508760-d854-4683-91ca-4ecb51709d21
function deletehead!(t)
	popfirst!(t)
end

# ╔═╡ d43889a9-804c-46ff-b8d2-6d638f1d7892
begin
	letts = ['a', 'b', 'c'];
	deletehead!(letts)
	print(letts)
end

# ╔═╡ 06aed196-2ac3-43f2-a889-eabd32ef62f5
md"**Glossary**

* array: a sequence of values.

* element: One of the values in an array (or other sequence); also called items.

* nested array: An array that is an element of another array.

* mutable: The property of a value that can be modified.

* augmented assignment: A statement that updates the value of a variable using an operator like =.

* accumulator: A variable used in a loop to add up or accumulate a result.

* reduce operation: A processing pattern that traverses a sequence and accumulates the elements into a single result.

* map: A processing pattern that traverses a sequence and performs an operation on each element.

* filter: A processing pattern that traverses a sequence and selects the elements that satisfy some criterion.

* dot operator: A binary operator that is applied element-by-element to arrays.

* dot syntax: Syntax used to apply a function elementwise to any array.

* optional argument: An argument that is not required.

* delimiter: A character or string used to indicate where a string should be split.

* object: Something a variable can refer to. An object has a type and a value.

* equivalent: Having the same value.

* identical: Being the same object (which implies equivalence).

* reference: The association between a variable and its value.

* aliasing: A circumstance where two or more variables refer to the same object."

# ╔═╡ 4b2d7b51-c9fb-4176-9285-7552325f29b2
md"**Exercise 10-1:**
Write a function called nestedsum that takes an array of arrays of integers and adds up the elements from all of the nested arrays."

# ╔═╡ cc035b98-33d4-4ffd-9c06-b4984a4dd445
function nestedsum(nested_array)
	total = []
	length_array = length(nested_array)
	for index in 1:length_array
		array_sum = sum(nested_array[index])
		push!(total, array_sum)
	end
	return sum(total)
end

# ╔═╡ eb522401-d47d-4a0e-a59e-a1adf5dc6693
begin
	test_array = [[1, 2], [3], [4, 5, 6]];
	nestedsum(test_array)
end

# ╔═╡ 63c4f43b-47e1-47b1-8fda-52a8d33501ba
md"**Exercise 10-2:**
Write a function called cumulsum that takes an array of numbers and returns the cumulative sum; that is, a new array where the 
th element is the sum of the first 
 elements from the original array."

# ╔═╡ 88a6f180-2c5a-482b-a0bf-0102718a0bfb
"""
Given an array, returns the cumulative sum.
"""
function cumulsum(array)
	new_array = []
	for index in 1:length(array)
		index_array = array[1:index] 
		push!(new_array, sum(index_array))
	end
	return new_array
end

# ╔═╡ 366e855a-ab0e-4e85-a7c0-e755a79cda92
begin
	test_cumul = [1, 2, 3];
	cumulsum(test_cumul)
end

# ╔═╡ 7006c295-8d3e-45ba-9480-7ad3df67a76b
md"**Exercise 10-3:**
Write a function called interior that takes an array and returns a new array that contains all but the first and last elements."

# ╔═╡ e18c41a6-71f9-49f0-be40-f8a67667a8f3
"""
Takes an array and returns a new array that contains all but the first and last elements.
"""
function interior(array)
	last_index = length(array)
	splice!(array, last_index)
	splice!(array, 1)
	return array
end

# ╔═╡ eafcaefb-113d-4349-8c7d-0c35b0925ded
begin
	test_interior = [1, 2, 3, 4]
	#length(test_interior)
	interior(test_interior)
	#test_interior[end]
end

# ╔═╡ 49266edc-e595-49e1-95e1-912d9b59fc37
md"**Exercise 10-4:**
Write a function called interior! that takes an array, modifies it by removing the first and last elements, and returns nothing."

# ╔═╡ 13e8fcab-1ecd-4cd0-8076-9580849942b7
"""
Takes an array and returns a new array that contains all but the first and last elements.
"""
function interior!(array)
	last_index = length(array)
	splice!(array, last_index)
	splice!(array, 1)
	return nothing
end

# ╔═╡ d71039b4-e315-4662-b5cd-0234d8e3bb11
begin
	test_interior! = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	interior!(test_interior!)
	print(test_interior!)
end

# ╔═╡ 86bfd7ca-eb50-49bc-9027-31c89b13ed72
md"**Exercise 10-5:**
Write a function called issort that takes an array as a parameter and returns true if the array is sorted in ascending order and false otherwise."

# ╔═╡ 6169f8e0-cfa8-4fb6-b9e5-d21f86baac64
function issort(array)
	if array == sort(array)
		return true
	else
		return false
	end
end

# ╔═╡ b359c255-70d7-43ef-9596-a7fd44cc1e89
begin
	test1_issort = [1, 2, 2]
	test2_issort = ['b', 'a']
	println(issort(test1_issort))
	println(issort(test2_issort))
end

# ╔═╡ 18ff1303-6eb5-4335-8308-2f7374eca4fa
md"**Exercise 10-6:**
Two words are anagrams if you can rearrange the letters from one to spell the other. Write a function called isanagram that takes two strings and returns true if they are anagrams."

# ╔═╡ c1f82997-b2cf-4c01-8969-54220f44eb9d
function isnagram(word1, word2)
end

# ╔═╡ d6eb5c73-12b6-4bb8-a237-c3231130b629
md"**Exercise 10-7:**
Write a function called hasduplicates that takes an array and returns true if there is any element that appears more than once. It should not modify the original array."

# ╔═╡ 7815059f-ac87-4a0d-beb3-70446b81fbfe


# ╔═╡ 0ae78ff1-d8e0-4c52-b7e7-ed64cdd890d1


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
# ╟─bc8d7178-e34c-4059-8d3e-07c2ff6a1fca
# ╠═c94efd74-8378-4759-a9b3-02ba967651de
# ╠═fb079915-35da-4a10-ab8f-5b06179cb9d7
# ╠═19e69eb1-ab89-44f6-9b62-d5f8f9cf05d1
# ╟─a3070a5f-09b9-4c33-ae22-5b64b41fd7e2
# ╠═8127a61a-a1a9-44f0-b183-f61d2b91b2c7
# ╟─3a830de1-38c7-4f82-a4ff-75e372d45a36
# ╠═d425afab-7e42-4e98-80ea-d251bd338af0
# ╠═4d6c6fe5-5435-44ae-9c3b-cf0a501805ab
# ╠═85209692-6825-4439-981e-c95dce11d7ef
# ╠═9e73631b-1841-4e8d-a93d-9cbe38d2d7f4
# ╟─28abd185-8c53-4fd9-939e-259ed2f48d3b
# ╠═50034e7d-0582-44d1-b4e0-87d37448dff3
# ╠═8a449b2c-bc4e-4cd9-85c9-a8aad8aa0b2a
# ╟─84e4efb6-1b8c-4b70-aa5a-fe675e8dfed6
# ╟─46bf8fe4-8c96-4a45-8046-4b6b32687a8a
# ╠═f9508760-d854-4683-91ca-4ecb51709d21
# ╠═d43889a9-804c-46ff-b8d2-6d638f1d7892
# ╟─06aed196-2ac3-43f2-a889-eabd32ef62f5
# ╟─4b2d7b51-c9fb-4176-9285-7552325f29b2
# ╠═cc035b98-33d4-4ffd-9c06-b4984a4dd445
# ╠═eb522401-d47d-4a0e-a59e-a1adf5dc6693
# ╟─63c4f43b-47e1-47b1-8fda-52a8d33501ba
# ╠═88a6f180-2c5a-482b-a0bf-0102718a0bfb
# ╠═366e855a-ab0e-4e85-a7c0-e755a79cda92
# ╟─7006c295-8d3e-45ba-9480-7ad3df67a76b
# ╠═e18c41a6-71f9-49f0-be40-f8a67667a8f3
# ╠═eafcaefb-113d-4349-8c7d-0c35b0925ded
# ╟─49266edc-e595-49e1-95e1-912d9b59fc37
# ╠═13e8fcab-1ecd-4cd0-8076-9580849942b7
# ╠═d71039b4-e315-4662-b5cd-0234d8e3bb11
# ╟─86bfd7ca-eb50-49bc-9027-31c89b13ed72
# ╠═6169f8e0-cfa8-4fb6-b9e5-d21f86baac64
# ╠═b359c255-70d7-43ef-9596-a7fd44cc1e89
# ╟─18ff1303-6eb5-4335-8308-2f7374eca4fa
# ╠═c1f82997-b2cf-4c01-8969-54220f44eb9d
# ╟─d6eb5c73-12b6-4bb8-a237-c3231130b629
# ╠═7815059f-ac87-4a0d-beb3-70446b81fbfe
# ╠═0ae78ff1-d8e0-4c52-b7e7-ed64cdd890d1
