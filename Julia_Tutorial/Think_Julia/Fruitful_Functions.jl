### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 98d89622-e826-11ed-210d-c1c2600e9c97
md"**Fruitful functions**"

# ╔═╡ ad32f12f-1f50-4d73-9e3d-13d00ee71541
md"Calling a function generates a return value. But, they are functions, which, speaking casually, they have no return value; more precisely, their return value is nothing.

One example of a function with a return value is the following:"

# ╔═╡ 60a9a2fc-2720-4d71-bd82-c4db5045cc5b
"""
Returns the area of a circle with the given radius.
"""
function area(radius)
	a = π * radius^2
	return a
end

# ╔═╡ bfcf3f58-18a8-44d2-8394-7770d7afe5c2
md"In a fruitful function the return statement includes an expression. This statement means: “Return immediately from this function and use the following expression as a return value.”

Since these return statements are in an alternative conditional, only one runs.

As soon as a return statement runs, the function terminates without executing any subsequent statements. Code that appears after a return statement, or any other place the flow of execution can never reach, is called **dead code**."

# ╔═╡ 61aba9fc-1fd8-455d-b8ff-88cbbe72c273
function absvalue(x)
	if x < 0
		return -x
	end
	if x > 0
		return x
	end
end

# ╔═╡ fcc8aa2d-eb77-41ab-8b4b-01b371fb1821
md"This function is incorrect because if x happens to be 0, neither condition is true, and the function ends without hitting a return statement."

# ╔═╡ 2601e683-702d-4c8a-b88a-e37863f31a56
md"Write a compare function that takes two values, x and y, and returns 1 if x > y, 0 if x == y, and -1 if x < y."

# ╔═╡ f46d7bd9-2521-4251-9a95-3c5ba14f99ab
function compare(x, y)
	if x > y
		return 1
	elseif x == y
		return 0
	else x < y
		return -1
	end
end

# ╔═╡ 9c09da2c-56ee-491b-86c8-13ca254a383e
md"To deal with increasingly complex programs, you might want to try a process called incremental development. The goal of incremental development is to avoid long debugging sessions by adding and testing only a small amount of code at a time."

# ╔═╡ 2b8a3c2d-3bbe-458d-9e90-e8fdbd217583
function distance(x₁, y₁, x₂, y₂)
	dx = x₂ - x₁
	dy = y₂ - y₁
	d² = dx^2 + dy^2
	sqrt(d²)
end

# ╔═╡ 860eec8b-a54f-415e-99f9-2262d0707399
distance(1, 2, 4, 6)

# ╔═╡ 75f867c7-52a3-43c4-af2e-ef4e41c7a794
md"The final version of the function doesn’t display anything when it runs; it only returns a value. The print statements we wrote are useful for debugging, but once you get the function working, you should remove them.
When you start out, you should add only a line or two of code at a time. As you gain more experience, you might find yourself writing and debugging bigger chunks. Either way, incremental development can save you a lot of debugging time
"

# ╔═╡ f69e1f83-43a2-4436-822f-4cb2af2eeef8
md"The key aspects of the process are:

1. Start with a working program and make small, incremental changes. At any point, if there is an error, you should have a good idea where it is.

2. Use variables to hold intermediate values so you can display and check them.

3. Once the program is working, you might want to remove some of the scaffolding or consolidate multiple statements into compound expressions, but only if it does not make the program difficult to read."

# ╔═╡ ba758264-0b0c-4173-be10-abfdf9fe563b
md"**Exercise 6-2:**
Use incremental development to write a function called hypotenuse that returns the length of the hypotenuse of a right triangle given the lengths of the other two legs as arguments. Record each stage of the development process as you go.
"

# ╔═╡ 4be6f649-0170-4649-a82b-8b53ef11d802
"""
Returns the length of the hypotenuse of a right triangle given the lengths of the other two legs as arguments.
"""
function hypotenuse(x, y)
	z² = x^2 + y^2
	return sqrt(z²)
end

# ╔═╡ 1ad9cb13-9df8-4ea5-9236-b717f426fdfa
hypotenuse(3, 4) == 5

# ╔═╡ 42efb6ea-9b93-4816-9560-855cdb55cb59
md"**Composition**

As you should expect by now, you can call one function from within another.
"

# ╔═╡ cc5b8122-5c23-410d-bc39-f2e8b5aa854a
"""
Returns the area of the circle, given two points, the center of the circle and a point on the perimeter.
"""
function circlearea(xc, yc, xp, yp)
	radius = distance(xc, yc, xp, yp)
	result = area(radius)
	return result
end

# ╔═╡ 41ed8b22-9214-4f9f-8b10-52ecebbf8f74
md"**Boolean Functions**

Functions can return Booleans, which is often convenient for hiding complicated tests inside functions.
"

# ╔═╡ dd862ee1-bb03-404f-9d45-35b6db05faa5
"""
Returns either true or false to indicate whether x is divisible by y.
"""
function isdivisible(x, y)
	x % y == 0
end

# ╔═╡ 1582af20-ceda-46ce-b2ca-f0d6cc103a39
isdivisible(6, 3) == true

# ╔═╡ 3708b855-fa1c-4977-a4f1-f24f4048bdfc
md"**Exercise 6-3:**
Write a function isbetween(x, y, z) that returns true if x ≤ y ≤ z or false otherwise"

# ╔═╡ 49937cad-b8ff-403b-aba7-873ce37aef3a
"""
Returns true if x ≤ y ≤ z or false otherwise.
"""
function isbetween(x, y, z)
	if x <= y && y <= z
		return true
	else
		return false
	end
end

# ╔═╡ b3e5cb36-2d24-4277-82c6-db3e461f5557
isbetween(1, 3, 2) == true

# ╔═╡ 04d5f3e4-65a5-4103-8d3a-e6b170948449
md"**Recursion**

A recursive definition is similar to a circular definition, in the sense that the definition contains a reference to the thing being defined."

# ╔═╡ 1b878079-0e2e-447d-a65f-27a43ef89263
md"**Checking Types**"

# ╔═╡ f2b6756e-dfd3-44c9-8a9d-e26a980f92c5
fact(1.5)

# ╔═╡ 5ccd99ff-e9f9-4272-a483-dffb105258f4
md"This program demonstrates a pattern sometimes called a guardian. The first two conditionals act as guardians, protecting the code that follows from values that might cause an error. The guardians make it possible to prove the correctness of the code."

# ╔═╡ a7ac1ef8-0ef8-4b75-916d-fcb268c8637a
md"**Exercise 6-5:**
Write a function named ack that evaluates the Ackermann function.
"

# ╔═╡ f090096e-12c8-4769-a7f1-23f6de3c7dca
"""
Evaluates the Ackermann function.
"""
function ack(m, n)
	if m == 0
		return n + 1
	elseif m > 0 && n == 0
		return ack(m - 1, 1)
	elseif m > 0 && n > 0
		return ack(m-1, ack(m, n-1))
	end
end

# ╔═╡ 9ec6eb45-3a68-4a8f-88e0-0d1d6390bb73
ack(3, 4) == 125

# ╔═╡ ed16b0e3-bf0d-4cad-8ad8-3f4c26f5c7c5
md"**Exercise 6-6:**


A palindrome is a word that is spelled the same backward and forward, like “noon” or “redivider.” Recursively, a word is a palindrome if the first and last letters are the same and the middle is a palindrome.

The following are functions that take a string argument and return the first, last, and middle letters."

# ╔═╡ ef3ae5e3-3fd8-43b5-9a50-7295a2faa748
begin
	function first(word)
    	first = firstindex(word)
    	word[first]
	end

	function last(word)
    	last = lastindex(word)
    	word[last]
	end

	function middle(word)
    	first = firstindex(word)
    	last = lastindex(word)
    	word[nextind(word, first) : prevind(word, last)]
	end
end

# ╔═╡ f163e47c-8101-401e-aad0-009f8f8f7689
md"Write a function called ispalindrome that takes a string argument and returns true if it is a palindrome and false otherwise. Remember that you can use the built-in function length to check the length of a string."

# ╔═╡ 351a2f10-7772-4733-b9af-e69478e226aa
function ispalindrome(x)
end

# ╔═╡ 76f17a3d-a02e-4a7c-ab97-27e1ff5ccbad
md"**Exercise 6-7:**
A number, a, is a power of b if it is divisible by b and a/b is a power of b. Write a function called ispower that takes parameters a and b and returns true if a is a power of b.
"

# ╔═╡ e12a24fd-8d86-4120-b2e3-084572c191d2
function ispower(a, b)
end

# ╔═╡ 51821003-e24f-4dc7-8ae5-931692dcc0ab
md"**Exercise 6-8:**
The greatest common divisor (GCD) of a and b is the largest number that divides both of them with no remainder.

One way to find the GCD of two numbers is based on the observation that if r is the remainder when a is divided by b, then gcd(a, b) = gcd(b, r). As a base case, we can use gcd(a, 0) = a.

Write a function called gcd that takes parameters a and b and returns their greatest common divisor."

# ╔═╡ 6ced2715-7cf0-4fa2-a93a-56cc29a15f12
function gcd(a, b)
end

# ╔═╡ c9108616-e03c-46ad-97e9-d01743d9248d
# ╠═╡ disabled = true
#=╠═╡
"""
Returns the factorial of a given integer n.
"""
function fact(n)
	if n == 0
		return 1
	else
		recurse = fact(n-1)
		result = n* recurse
		return result
	end
end
  ╠═╡ =#

# ╔═╡ d5a05064-f4b3-443c-9687-5b63edac01c0
"""
Returns the Fibonacci of a given integer n.
"""
function fact(n)
	if !(n isa Int64)
		error("Factorial is only defined for integers.")
	elseif n < 0
		error("Factorial is not defined for negative integers.")
	elseif n == 0
		return 0
	elseif n == 1
		return 1
	else
		return fib(n-1) + fib(n-2)
	end
end

# ╔═╡ Cell order:
# ╟─98d89622-e826-11ed-210d-c1c2600e9c97
# ╟─ad32f12f-1f50-4d73-9e3d-13d00ee71541
# ╠═60a9a2fc-2720-4d71-bd82-c4db5045cc5b
# ╟─bfcf3f58-18a8-44d2-8394-7770d7afe5c2
# ╠═61aba9fc-1fd8-455d-b8ff-88cbbe72c273
# ╟─fcc8aa2d-eb77-41ab-8b4b-01b371fb1821
# ╟─2601e683-702d-4c8a-b88a-e37863f31a56
# ╠═f46d7bd9-2521-4251-9a95-3c5ba14f99ab
# ╟─9c09da2c-56ee-491b-86c8-13ca254a383e
# ╠═2b8a3c2d-3bbe-458d-9e90-e8fdbd217583
# ╠═860eec8b-a54f-415e-99f9-2262d0707399
# ╟─75f867c7-52a3-43c4-af2e-ef4e41c7a794
# ╟─f69e1f83-43a2-4436-822f-4cb2af2eeef8
# ╟─ba758264-0b0c-4173-be10-abfdf9fe563b
# ╠═4be6f649-0170-4649-a82b-8b53ef11d802
# ╠═1ad9cb13-9df8-4ea5-9236-b717f426fdfa
# ╟─42efb6ea-9b93-4816-9560-855cdb55cb59
# ╠═cc5b8122-5c23-410d-bc39-f2e8b5aa854a
# ╟─41ed8b22-9214-4f9f-8b10-52ecebbf8f74
# ╠═dd862ee1-bb03-404f-9d45-35b6db05faa5
# ╠═1582af20-ceda-46ce-b2ca-f0d6cc103a39
# ╟─3708b855-fa1c-4977-a4f1-f24f4048bdfc
# ╠═49937cad-b8ff-403b-aba7-873ce37aef3a
# ╠═b3e5cb36-2d24-4277-82c6-db3e461f5557
# ╟─04d5f3e4-65a5-4103-8d3a-e6b170948449
# ╠═c9108616-e03c-46ad-97e9-d01743d9248d
# ╠═d5a05064-f4b3-443c-9687-5b63edac01c0
# ╟─1b878079-0e2e-447d-a65f-27a43ef89263
# ╠═f2b6756e-dfd3-44c9-8a9d-e26a980f92c5
# ╟─5ccd99ff-e9f9-4272-a483-dffb105258f4
# ╟─a7ac1ef8-0ef8-4b75-916d-fcb268c8637a
# ╠═f090096e-12c8-4769-a7f1-23f6de3c7dca
# ╠═9ec6eb45-3a68-4a8f-88e0-0d1d6390bb73
# ╟─ed16b0e3-bf0d-4cad-8ad8-3f4c26f5c7c5
# ╠═ef3ae5e3-3fd8-43b5-9a50-7295a2faa748
# ╟─f163e47c-8101-401e-aad0-009f8f8f7689
# ╠═351a2f10-7772-4733-b9af-e69478e226aa
# ╟─76f17a3d-a02e-4a7c-ab97-27e1ff5ccbad
# ╠═e12a24fd-8d86-4120-b2e3-084572c191d2
# ╟─51821003-e24f-4dc7-8ae5-931692dcc0ab
# ╠═6ced2715-7cf0-4fa2-a93a-56cc29a15f12
