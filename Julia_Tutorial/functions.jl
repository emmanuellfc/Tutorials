## Julia provides functions that convert values from one type to another
## The parse function takes a string and converts it to any number type, if it can
## or complains otherwise.
x = "32"
y = parse(Int64, x)
println(typeof(x))
println(typeof(y))

## trunc can convert floating-point values to integers, but it doesn't round off
z =  trunc(Int64, 3.999)
println(z)

## float converts integers to floating-point numbers
z1 = float(32)
println(z1)

## string converts its argument to a string
z2 = string(32)
println(typeof(z2))

## Math functions
println(sqrt(2))