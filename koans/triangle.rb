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
  guard_negative_length(a, b, c)
  guard_inconsistent_length(a, b, c)

  triangle_types = {
      3 => :scalene,
      2 => :isosceles,
      1 => :equilateral
  }
  uniq_count = [a, b, c].uniq.size

  triangle_types[uniq_count]
end

def guard_negative_length(*args)
  invalid_lengths = args.select { |l| l <= 0 }
  raise TriangleError.new("Invalid length #{invalid_lengths}") if invalid_lengths.any?
end

def guard_inconsistent_length(*args)
  raise TriangleError.new('Invalid lengths') if args.permutation.to_a.any? do |arr|
    arr[0..-2].inject{ |sum, item| sum + item } <= arr.last
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
