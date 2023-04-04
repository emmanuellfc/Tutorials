
function collatz_steps(x)
    steps = 0
    if x <= 0
        throw(DomainError(x))
    else 
        while x != 1
            if x % 2 == 0
                x = x / 2
                steps += 1
            else
                x = 3*x + 1
                steps += 1
            end
        end 
    end
    return steps
end