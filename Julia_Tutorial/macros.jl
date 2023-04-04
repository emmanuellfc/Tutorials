### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ b5d5778e-cce9-11ed-0f57-9fa1a49c2174
function show_value(x)
	println("The value you passed is ", x)
end

# ╔═╡ f04ac1cf-eed5-4250-a254-57a045737537
orange = "sweet"

# ╔═╡ 7f528c2f-71b5-4e3d-a9b6-6336397ce3e6
apple = "sour"

# ╔═╡ d948f245-56ec-43d9-a2d2-5f7a7c07bffe
show_value(orange)

# ╔═╡ 8328b319-0d85-4a18-af0f-e313d8f77366
show_value(apple)

# ╔═╡ dcb4d30c-445b-43ae-a581-3d7af4694baa
## Any information about what the user wrote is lost, as the function only knows
## "sweet" and "sour" were passed. If we want to incorporate the information contained
## in the variables, we need a macro

# ╔═╡ 9634ed65-8146-49c9-8340-e0ed4c7bd869
macro show_value(variable)
	quote
		println("The ", $(string(variable)), " you passed is ", $(esc(variable)))
	end
end

# ╔═╡ c8470720-372a-494d-85de-33ca7ce477f0
@show_value(orange)

# ╔═╡ 3390eb9e-f80d-449f-86fe-8519d94871de
@show_value(apple)

# ╔═╡ ba9c4208-ae25-4dfc-ab65-99e428a76c00
## A macro that works pretty similar to this one is @show

# ╔═╡ 0795dbc0-4ace-4e0d-bfcb-b56a510c8463
@show orange

# ╔═╡ 275b8442-6c87-4470-9dc5-1b3908120c9a
## It is important to notice that it doesn't make a difference if we use parenthesis
## for the macros or not.

# ╔═╡ b7587e7e-67f5-4555-95a3-0d64f3f69828
## How do macros work?

## First of all, a macro runs before any code is executed.
## Therefore, you never have access to any runtime values in a macro.
## All the logic in the macro has to happen only using the information you can get from the expressions that the macro is applied to.
## One good step to understand what's going on with an expression, is to dump it. You can use Meta.@dump for that.

# ╔═╡ 5373bd49-78d4-4a87-8006-a187ea2fddc5
Meta.@dump orange

# ╔═╡ e9ad3c4d-59ae-4800-a06c-d5e196666c63
## The expression orange contains only the Symbol orange. So that is what our macro gets as input, just :orange. But again, no runtime information about it being "sweet"

# ╔═╡ b438d041-e28b-4118-ba16-32f9c36d9927
@macroexpand @show_value orange

# ╔═╡ 81229c9d-03f8-4935-88fb-a83e76ec60a1


# ╔═╡ 03b6a3f9-8f8e-4d50-8178-c84352df0206


# ╔═╡ 6e6ceacc-ffb7-4273-aacc-cb5648d81e5f


# ╔═╡ 9f8a93cd-8f04-470a-986c-ef6c1bfe2ff2


# ╔═╡ e13c4adb-7365-48c9-abe7-bf72f4769bc7


# ╔═╡ 1dac9a13-5749-41d0-a014-03dfb96fd3ae


# ╔═╡ Cell order:
# ╠═b5d5778e-cce9-11ed-0f57-9fa1a49c2174
# ╠═f04ac1cf-eed5-4250-a254-57a045737537
# ╠═7f528c2f-71b5-4e3d-a9b6-6336397ce3e6
# ╠═d948f245-56ec-43d9-a2d2-5f7a7c07bffe
# ╠═8328b319-0d85-4a18-af0f-e313d8f77366
# ╠═dcb4d30c-445b-43ae-a581-3d7af4694baa
# ╠═9634ed65-8146-49c9-8340-e0ed4c7bd869
# ╠═c8470720-372a-494d-85de-33ca7ce477f0
# ╠═3390eb9e-f80d-449f-86fe-8519d94871de
# ╠═ba9c4208-ae25-4dfc-ab65-99e428a76c00
# ╠═0795dbc0-4ace-4e0d-bfcb-b56a510c8463
# ╠═275b8442-6c87-4470-9dc5-1b3908120c9a
# ╠═b7587e7e-67f5-4555-95a3-0d64f3f69828
# ╠═5373bd49-78d4-4a87-8006-a187ea2fddc5
# ╠═e9ad3c4d-59ae-4800-a06c-d5e196666c63
# ╠═b438d041-e28b-4118-ba16-32f9c36d9927
# ╠═81229c9d-03f8-4935-88fb-a83e76ec60a1
# ╠═03b6a3f9-8f8e-4d50-8178-c84352df0206
# ╠═6e6ceacc-ffb7-4273-aacc-cb5648d81e5f
# ╠═9f8a93cd-8f04-470a-986c-ef6c1bfe2ff2
# ╠═e13c4adb-7365-48c9-abe7-bf72f4769bc7
# ╠═1dac9a13-5749-41d0-a014-03dfb96fd3ae
