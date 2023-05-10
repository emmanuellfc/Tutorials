### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ eae3ec61-6a78-439a-b414-ef69b1a70e5c
function luhn(code)
    all(c -> isspace(c) || isdigit(c), code) || return false
    ds = [parse(Int, d) for d in code if isdigit(d)]
    length(ds) > 1 || return false
    f = d -> d > 4 ? d * 2 - 9 : d * 2
    checksum = sum(ds[end:-2:1]) + sum(f, ds[end-1:-2:1])
    checksum % 10 == 0
end

# ╔═╡ Cell order:
# ╠═eae3ec61-6a78-439a-b414-ef69b1a70e5c
