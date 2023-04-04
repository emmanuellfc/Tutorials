function printtwice(Emmanuel)
    println(Emmanuel)
    println(Emmanuel)
end

#printtwice("Emmanuel")
#printtwice(42)
#printtwice("Julia "^4)

## Variables and parameters are local
## When you create a variable inside a function, it is local, 
## which means that it only exists inside the function.

function cattwice(part1, part2)
    concat = part1 * part2
    printtwice(concat)
end

# line1 = "Emmanuel "
# line2 = "Flores"
# cattwice(line1, line2)

result = printtwice("Bing")
tp_not = typeof(show(result))
print(tp_not)