function isperfect(x)
    if x <= 0
        throw(DomainError(x, "x must be positive"))
    else
    end
    sum = 0
    for i = 1:x-1
        if x % i == 0
            sum += i
        end
    end
    if sum == x
        return true
    else
        return false
    end
end

function isabundant(x)
    if x <= 0
        throw(DomainError(x, "x must be positive"))
    else
    end
    sum = 0
    for i = 1:x-1
        if x % i == 0
            sum += i
        end
    end
    if sum > x
        return true
    else
        return false
    end
end

function isdeficient(x)
    if x <= 0
        throw(DomainError(x, "x must be positive"))
    else
    end
    sum = 0
    for i = 1:x-1
        if x % i == 0
            sum += i
        end
    end
    if sum < x
        return true
    else
        return false
    end
end

println(isperfect(6))
println(isabundant(12))
println(isdeficient(8))