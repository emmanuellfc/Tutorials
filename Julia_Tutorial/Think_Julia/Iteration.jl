### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ ad5f6e16-e864-11ed-211d-8f1d4ec79c07
md"**Iteration**"

# ╔═╡ 5f048692-6e17-4f18-9ff7-d2b672e00cb5
function countdown(n)
	while n > 0
		print(n, " ")
		n = n - 1
	end
	println("Blastoff!")
end

# ╔═╡ 9ad320b2-d1eb-47c9-b48e-072165524d8c
countdown(3)

# ╔═╡ 2f83cb00-a817-4573-8148-bc9cdb6855ea
md"Formally here is the flow of execution for a while statement.

* Determine whether the condition is true or false.
* If false, exit the while statement and continue execution at the next step.
* If the condition is true, run the body and then go back to step 1.

The body of the loop should change the value of one or more variables so that the condition becomes false eventually and the loop terminates. Otherwise, the loop will repeat forever, which is called an infinite loop.
"

# ╔═╡ 90773b94-b2c3-4b91-9cdc-05b3ec5b7645
md"**Exercise 7-1:**
Rewrite the function printn from “Recursion” using iteration instead of recursion."

# ╔═╡ 4a7c30f0-ec5d-4904-90fe-5d504f1f1692
"""
Print n times a string given an integer n.
"""
function printn(s, n)
    while n > 0 
		println(s)
		n = n - 1
	end
end

# ╔═╡ 4a3f1a47-e5f4-4182-bec1-9f5882952e69
printn("lol", 4)

# ╔═╡ c87579c2-0dd7-45dd-bf78-4c23ec51a984
md"**break**"

# ╔═╡ c9a13da8-00b6-4e19-8366-05a7c84fa7be
md"Sometimes you don’t know it’s time to end a loop until you get halfway through the body. In that case you can use the break statement to jump out of the loop."

# ╔═╡ b6c88e49-5fd2-4f90-bab0-6860ee6d2d1a
md"**Continue**

When a continue statement is encountered inside a loop, control jumps to the beginning of the loop for the next iteration, skipping the execution of statements inside the body of the loop for the current iteration."

# ╔═╡ 0482ec20-5b29-448f-afb6-011858d539d9
for i in 1:10
    if i % 3 == 0
        continue
    end
    print(i, " ")
end

# ╔═╡ 248dc8cd-82a7-4f81-a8c5-194cd51d5545
md"**Square Roots**
Loops are often used in programs that compute numerical results by starting with an approximate answer and iteratively improving it.

For example, one way of computing square roots is Newton’s method. Suppose that you want to know the square root of a. If you start with almost any estimate, x, you can compute a better estimate with the following formula
y = 1/2(x + a/x)
"

# ╔═╡ 38784c9e-0bb8-48d3-9a18-47308e3cefd3
md"**Algorithms**

One of the characteristics of algorithms is that they do not require any intelligence to carry out. They are mechanical processes where each step follows from the last according to a simple set of rules.

Some of the things that people do naturally, without difficulty or conscious thought, are the hardest to express algorithmically. Understanding natural language is a good example."

# ╔═╡ fe1a484a-1570-4ab8-a1e2-54541c3ba52e
md"**Glossary**


*reassignment*:
Assigning a new value to a variable that already exists.

*update*:
An assignment where the new value of the variable depends on the old.

*initialization*:
An assignment that gives an initial value to a variable that will be updated.

*increment*:
An update that increases the value of a variable (often by 1).

*decrement*:
An update that decreases the value of a variable.

*iteration*:
Repeated execution of a set of statements using either a recursive function call or a loop.

*while statement*:
A statement that allows iterations controlled by a condition.

*infinite loop*:
A loop in which the terminating condition is never satisfied.

*break statement*:
A statement allowing you to jump out of a loop.

*continue statement*:
A statement inside a loop that jumps to the beginning of the loop for the next iteration.

*algorithm*:
A general process for solving a category of problems."

# ╔═╡ b5826ffc-8e15-4462-9a3b-78feafe19f3b
md"**Exercise 7-2**:
Copy the loop from “Square Roots” and encapsulate it in a function called mysqrt that takes a as a parameter, chooses a reasonable value of x, and returns an estimate of the square root of a."

# ╔═╡ 0786141a-9fee-4efd-9e51-41d7eef711e5
function mysqrt(a)
	x = a - 1
	ε = 0.0001
	y = (x + a/x) / 2
	while true
    y = (x + a/x) / 2
    	if abs(y - x) < ε
			return y
		end
    x = y
	end
end

# ╔═╡ 4af93872-ea0c-4049-a4e7-5581f7fc791f
#mysqrt(3)

# ╔═╡ Cell order:
# ╟─ad5f6e16-e864-11ed-211d-8f1d4ec79c07
# ╠═5f048692-6e17-4f18-9ff7-d2b672e00cb5
# ╠═9ad320b2-d1eb-47c9-b48e-072165524d8c
# ╟─2f83cb00-a817-4573-8148-bc9cdb6855ea
# ╟─90773b94-b2c3-4b91-9cdc-05b3ec5b7645
# ╠═4a7c30f0-ec5d-4904-90fe-5d504f1f1692
# ╠═4a3f1a47-e5f4-4182-bec1-9f5882952e69
# ╟─c87579c2-0dd7-45dd-bf78-4c23ec51a984
# ╟─c9a13da8-00b6-4e19-8366-05a7c84fa7be
# ╟─b6c88e49-5fd2-4f90-bab0-6860ee6d2d1a
# ╠═0482ec20-5b29-448f-afb6-011858d539d9
# ╟─248dc8cd-82a7-4f81-a8c5-194cd51d5545
# ╟─38784c9e-0bb8-48d3-9a18-47308e3cefd3
# ╟─fe1a484a-1570-4ab8-a1e2-54541c3ba52e
# ╟─b5826ffc-8e15-4462-9a3b-78feafe19f3b
# ╠═0786141a-9fee-4efd-9e51-41d7eef711e5
# ╠═4af93872-ea0c-4049-a4e7-5581f7fc791f
