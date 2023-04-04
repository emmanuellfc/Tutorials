function is_equilateral(sides)
    s1 = sides[1]
    s2 = sides[2]
    s3 = sides[3]
    c1 = s2 + s3
    c2 = s1 + s3
    c3 = s1 + s2
    if s1 == 0 || s2 == 0 || s3 == 0
        return false
    elseif s1 > c1 || s2 > c2 || s3 > c3
        return false
    elseif s1 == s2 == s3
        return true
    elseif s1 != s2 || s1 != s3 || s2 != s3
        return false
    end
end

function is_isosceles(sides)
    s1 = sides[1]
    s2 = sides[2]
    s3 = sides[3]
    c1 = s2 + s3
    c2 = s1 + s3
    c3 = s1 + s2
    if s1 == 0 || s2 == 0 || s3 == 0
        return false
    elseif s1 > c1 || s2 > c2 || s3 > c3
        return false
    elseif s1 != s2 && s1 != s3 && s2 != s3
        return false
    elseif s1 == s2 || s1 == s3 || s2 == s3
        return true
    end
end

function is_scalene(sides)
    s1 = sides[1]
    s2 = sides[2]
    s3 = sides[3]
    c1 = s2 + s3
    c2 = s1 + s3
    c3 = s1 + s2
    if s1 == 0 || s2 == 0 || s3 == 0
        return false
    elseif s1 > c1 || s2 > c2 || s3 > c3
        return false
    elseif s1 == s2 || s1 == s3 
        return false
    elseif s2 == s3 || s1 == s3
        return false
    elseif s1 != s2 && s1 != s3 && s2 != s3
        return true
    end
end

println(is_isosceles([2, 3, 4]) == true)