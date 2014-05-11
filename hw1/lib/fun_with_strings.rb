module FunWithStrings
  def palindrome?
    chars = self.scan(/\w+/).join.downcase
    chars == chars.reverse
  end
  def count_words
    self.scan(/\w+/).inject(Hash.new(0)) do |hash, key|
      hash[key.downcase] += 1
      hash
    end
  end
  def anagram_groups
    self.scan(/\w+/).group_by { |word| word.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
