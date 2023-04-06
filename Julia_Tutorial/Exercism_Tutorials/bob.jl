function is_upper(word)
    uppercase(word) == word 
end
function is_question(word)
    endswith(word, "?")
end
function bob(stimulus)
    stimulus = strip(stimulus)
    if is_upper(stimulus) && any(isuppercase, stimulus) && is_question(stimulus)
        return "Calm down, I know what I'm doing!"
    elseif isempty(stimulus) 
        return "Fine. Be that way!"
    elseif is_upper(stimulus) && any(isuppercase, stimulus)
        return "Whoa, chill out!"
    elseif endswith(stimulus, "?") 
        return "Sure."
    else
        return "Whatever."
    end
end
