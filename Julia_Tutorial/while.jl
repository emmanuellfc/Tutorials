function statement(x)
    while x <= 5
        println(x)
        global x += 1
    end
end

statement(1)