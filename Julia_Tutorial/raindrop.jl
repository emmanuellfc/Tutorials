function raindrops(x)
    y = ""
    x1 = mod(x, 3)
    x2 = mod(x, 5)
    x3 = mod(x, 7)
    if x1 == 0
        y1 = y * "Pling"
        if x2 == 0
            y2 = y1 * "Plang"
            if x3 == 0
                y3 = y2 * "Plong"
                return y3
            else 
                return y2
            end
        elseif x3 == 0
            y3 = y1 * "Plong"
            return y3
        else
            return y1
        end
    elseif x2 == 0
        y2 = y * "Plang"
        if x3 == 0
            y3 = y2 * "Plong"
            return y3
        else
            return y2
        end
    elseif x3 == 0
        y3 = y * "Plong"
        return y3
    elseif x1 != 0 && x2 != 0 && x3 != 0
        return string(x)
    end


end