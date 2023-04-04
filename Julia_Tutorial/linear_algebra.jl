using LinearAlgebra
A = [1 2 3; 0 1 4; 5 6 0]
b = [1;2;3]

x = A \ b
println("x: ", x)
println("Ax = ", A * x)