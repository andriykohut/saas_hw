#!/usr/bin/env ruby
=begin
takes a string representing a name and returns the string "Hello, "
concatenated with the name.
=end
def hello( name )
  "Hello, #{name}"
end

=begin
takes a string and returns true if it starts with a consonant and false
otherwise.
(For our purposes, a consonant is any letter other than A, E, I, O, U.)
=end
def starts_with_consonant?( s )
  return true if s =~ /^[^aeiou\W].*/i
  false
end

=begin
takes a string and returns true if the string represents a binary number that
is a multiple of 4.
=end
def binary_multiple_of_4?( s )
  if s =~ /^[01]+$/
    return s.to_i(2) % 4 == 0
  end
  false
end
