 function checkfermat(a, b, c, n)
    if n <= 2
        println("n must be greater than 2")
    else
        if a^n + b^n == c^n
            return "Holy smokes, Fermat was wrong!"
        else
            return "No, that doesn't work."
        end
    end
 end

println(checkfermat(1, 2, 3, 4))