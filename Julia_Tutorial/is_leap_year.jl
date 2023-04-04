"""
    is_leap_year(year)
 
Return `true` if `year` is a leap year in the gregorian calendar.
 
"""
function is_leap_year(x)
	z1 = mod(x,4)
	z2 = mod(x, 100)
	z3 = mod(x, 400)
	if z1 == 0
		if z2 == 0
			if z3 == 0
				return true
			else
				return false
			end
		else
			true
		end
	else
		return false
	end
end
		