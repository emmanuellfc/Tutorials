## Instructions
## Determine if a triangle is equilateral, isosceles, or scalene.
## An equilateral triangle has all three sides the same length.
## An isosceles triangle has at least two sides the same length. (It is sometimes specified as having exactly two sides the same length, but for the purposes of this exercise we'll say at least two.)
## A scalene triangle has all sides of different lengths.
## 
## Note
## For a shape to be a triangle at all, all sides have to be of length > 0, and the sum of the lengths of any two sides must be greater than or equal to the length of the third side.

def equilateral(sides):
    """
    An equilateral triangle has all three sides the same length.
    """
    s0 = sides[0]
    s1 = sides[1]
    s2 = sides[2]
    if s0 > 0 and s1 > 0 and s2 > 0:
        if (s0 + s1 >= s2) and (s1+s2 >= s0) and (s2 + s0 >= s1):
            if s0 == s1 == s2:
                return True
            else:
                return False
        else:
            return False
    else:
        return False

def isosceles(sides):
    """
    An isosceles triangle has at least two sides the same length.
    """
    s0 = sides[0]
    s1 = sides[1]
    s2 = sides[2]
    if s0 > 0 and s1 > 0 and s2 > 0:
        if (s0 + s1 >= s2) and (s1 + s2 >= s0) and (s2 + s0 >= s1):
            if (s0 == s1) or (s0 == s2) or (s1 == s2):
                return True
            else:
                return False
        else:
            return False
    else:
        return False

def scalene(sides):
    """
    A scalene triangle has all sides of different lengths.
    """
    s0 = sides[0]
    s1 = sides[1]
    s2 = sides[2]
    if s0 > 0 and s1 > 0 and s2 > 0:
        if (s0 + s1 >= s2) and (s1+s2 >= s0) and (s2 + s0 >= s1):
            if (s0 != s1) and (s0 != s2) and (s1 != s2):
                return True
            else:
                return False
        else:
            return False
    else:
        return False
