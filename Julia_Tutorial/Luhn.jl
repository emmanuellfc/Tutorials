### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 0e320f42-ccd5-11ed-3497-078dddb178e2
x = parse(Int, "1")

# ╔═╡ 183fa7fb-ad36-4734-bad6-f6ba216a704a
typeof(x)

# ╔═╡ 5406f52b-9728-4c60-90c2-357f3f5d5ecf
function luhn(x)
	x_len = length(x)
	x_str = string(x)
	x_num = parse(Int, x)
	#return x_num
	for i in 1:x_len
		
		println(x_len)
		return x_str[i]
	end
end

# ╔═╡ ddb88e42-723c-4a45-b19d-12e8bd52d429
luhn("123")

# ╔═╡ 6a65b971-df82-4f1f-88f1-ef0a724b216b
function test(x)
	for i in 1:x
		new_i = mod(i, 2) 
		if new_i == 0
			return false
		else 
			return i
		end
	end
end

# ╔═╡ 5d4f9f7a-441f-4ced-906c-d302ba91a9a2
for i in 1:10
	new_i = mod(i,2)
	if new_i == 0
		two_i = i + i
		if two_i > 9
			res_i = two_i-9
			println(res_i)
		else
			val_i = two_i
			println(val_i)
		end
	end
end

# ╔═╡ Cell order:
# ╠═0e320f42-ccd5-11ed-3497-078dddb178e2
# ╠═183fa7fb-ad36-4734-bad6-f6ba216a704a
# ╠═5406f52b-9728-4c60-90c2-357f3f5d5ecf
# ╠═ddb88e42-723c-4a45-b19d-12e8bd52d429
# ╠═6a65b971-df82-4f1f-88f1-ef0a724b216b
# ╠═5d4f9f7a-441f-4ced-906c-d302ba91a9a2
