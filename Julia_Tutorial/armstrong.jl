function isarmstrong(x)
    x_str = string(x)
    x_len = length(x_str)
    x_sum = 0
    for i in 1:x_len
        x_num = parse(Int64, x_str[i])
        x_sum += x_num^x_len
    end
    if x_sum == x
        return true
    else
        return false
    end
end