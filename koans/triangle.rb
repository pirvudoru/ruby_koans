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
  triangle_types = {
      3 => :scalene,
      2 => :isosceles,
      1 => :equilateral
  }
  uniq_count = [a, b, c].uniq.size

  triangle_types[uniq_count]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
