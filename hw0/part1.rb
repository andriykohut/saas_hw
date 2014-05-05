#!/usr/bin/env ruby
=begin
takes an array of integers as an argument and returns the sum of its elements.
For an empty array it should return zero
=end
def sum( array )
  return 0 if array.empty?
  array.reduce(:+)
end

=begin
takes an array of integers as an argument and returns the sum of its two
largest elements. For an empty array it should return zero. For an array with
just one element, it should return that element.
=end
def max_2_sum( array )
  return 0 if array.empty?
  array.sort.last(2).reduce(:+)
end

=begin
takes an array of integers and an additional integer, n, as arguments and
returns true if any two distinct elements in the array of integers sum to n.
An empty array or single element array should both return false. 
=end
def sum_to_n?( array, n )
  array.combination(2) do |c|
    return true if c.reduce(:+) == n
  end
  false
end
