### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 69fd5978-fb4b-4d1a-acc4-a2a7cfdc9a8a
begin
	using Pkg
	Pkg.add("Observables")
	Pkg.add("Plots")
end

# ╔═╡ eb7f1945-485f-44ec-bfd1-f24ffbdf00fb
using Observables, Plots

# ╔═╡ b7b80ef0-e214-11ed-1787-e518851467a3
md"**Getting Interactive Plots with Julia**
"

# ╔═╡ 26476d32-2880-4013-a848-4d9fc7135427
angle = Observable(pi/2)

# ╔═╡ 48cb4e1b-896c-45e3-883b-49a189f6915c
function plot_arc(angle_value)
    angles = range(0, angle_value, length=100)
    x = cos.(angles)
    y = sin.(angles)
    plt = plot(
        x, y,
        ratio=:equal,
        xlims=(-1.5, 1.5), ylims=(-1.5, 1.5),
        legend=:none,
        framestyle=:none)
    display(plt)
end

# ╔═╡ 4b65524d-4ac9-4263-a433-2aa290b912b3
angle_observer = on(plot_arc, angle)

# ╔═╡ 6d4b89f4-228a-496b-ab54-b68c57397751
notify!(angle)

# ╔═╡ Cell order:
# ╟─b7b80ef0-e214-11ed-1787-e518851467a3
# ╠═69fd5978-fb4b-4d1a-acc4-a2a7cfdc9a8a
# ╠═eb7f1945-485f-44ec-bfd1-f24ffbdf00fb
# ╠═26476d32-2880-4013-a848-4d9fc7135427
# ╠═48cb4e1b-896c-45e3-883b-49a189f6915c
# ╠═4b65524d-4ac9-4263-a433-2aa290b912b3
# ╠═6d4b89f4-228a-496b-ab54-b68c57397751
