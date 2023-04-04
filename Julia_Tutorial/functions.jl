"""
Function for obtaining the distance between two points in the plane.
"""
function distance(x1, y1, x2, y2)
    dx = x2 - x1
    dy = y2 - y1
    d2 = dx^2 + dy^2
    sqrt(d2)
end

## Use incremental development to write a function called hypotenuse 
## that returns the length of the hypotenuse of a right triangle given 
## the lengths of the other two legs as arguments. Record each stage of 
## the development process as you go.

"""
Function for obtaining the hypotenuse of a right triangle.
"""
function hipotenuse(side1, side2)
    side3 = sqrt(side1^2 + side2^2)
end

## Write a function isbetween(x, y, z) 
## that returns true if x ≤ y ≤ z or false otherwise.

"""
Function for checking if a number is between two other numbers.
"""
function isbetween(x, y, z)
    if x <= y && y <= z
        return true
    else
        return false
    end
end