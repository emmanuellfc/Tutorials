function score(x, y)
    radius = sqrt(x^2 + y^2)
    if radius <= 1
        return 10
    elseif radius <= 5
        return 5
    elseif radius <= 10
        return 1
    else
        return 0
    end
end

println(score(-9, 9) == 0)