# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  sides = [a, b, c]
  lower_to_bigger = sides.sort

  unless ((a && b && c) > 0 )
       raise TriangleError.new("Sides' Values can not be Zero or less")
  end

  unless (lower_to_bigger[0] + lower_to_bigger[1] > lower_to_bigger[2])
    raise TriangleError.new("the sum the 2 smallest sides of a triangle should be bigger than the biggest side")
  end

  if (a == b && a == c)
    return :equilateral
  elsif ((a == b) || (a == c) || (b == c))
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
  
end
