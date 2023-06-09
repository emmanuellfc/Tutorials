"""
Function that returns the Ackermann function of two numbers.
"""
function ackermann(m, n)
    if m == 0
        return n + 1
    elseif m > 0 && n == 0
        return ackermann(m - 1, 1)
    elseif m > 0 && n > 0
        return ackermann(m - 1, ackermann(m, n - 1))
    end
end