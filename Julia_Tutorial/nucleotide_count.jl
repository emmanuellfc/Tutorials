function count_nucleotides(sequence)
    x     = length(sequence)
    upper = uppercase(sequence)
    a_count = 0
    c_count = 0
    g_count = 0
    t_count = 0
    invalid = 0
    for i in 1:x
        if string(upper[i]) == "A"
            a_count += 1
        elseif string(upper[i]) == "C"
            c_count += 1
        elseif string(upper[i]) == "G"
            g_count += 1
        elseif string(upper[i]) == "T"
            t_count += 1
        else
            invalid += 1
        end
    end
    if invalid != 0
        throw(DomainError(sequence))
    else
        count = Dict('A' => a_count, 
                     'C' => c_count, 
                     'G' => g_count, 
                     'T' => t_count) 
        return count
    end
end


println(count_nucleotides("AGXXACT"))