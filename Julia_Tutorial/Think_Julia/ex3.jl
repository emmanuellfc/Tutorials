## Write a function named rightjustify that takes a strign named s as a parameter
## and prints the string with enough leading spaces so that the last letter of the string
## is in column 70 of the display
# function rightjustify(s)
#     str_length    = length(s)
#     end_pos = 122
#     fir_pos = end_pos - str_length
#     sp = " " ^ fir_pos
#     println(sp, s)
# end

# rightjustify("Emmanuel")
# rightjustify("Orlando")
# rightjustify("Tufts")
# rightjustify("UAM")

## A function object is a value you can assign to a variable or pass as an argument.
## For example, dotwice is a function that takes a function object as an argument 
## and calls it twice:
## Here's an example that uses dotwice to call a function named printspam twice
# function twice(s)
#     println(s)
# end

# function dotwice(f, s)
#     f(s)
# end

# function printtwice(s)
#     println(s)
#     println(s)
# end
#  function dofor(f, s)
#     printtwice(s)
#     printtwice(s)
#  end

# dofor(printtwice, "Emmanuel")

## Write a function printgrid that draws a grid.

function printgrid()
    s0 = "+"
    s1 = "-" ^ 4
    s2 = "|"
    s3 = " " ^ 4
    r0 = s0 * s1 * s0 * s1 * s0
    r1 = s2 * s3 * s2 * s3 * s2
    println(r0)
    println(r1)
    println(r1)
    println(r1)
    println(r1)
    println(r0)
    println(r1)
    println(r1)
    println(r1)
    println(r1)
    println(r0)
end

printgrid()