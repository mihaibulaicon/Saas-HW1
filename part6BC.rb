def palindrome?(str)
  replace_result=  str.gsub(/[^a-zA-Z]/,"")
  downCase_result = replace_result.downcase
  reverted_result = downCase_result.reverse

  downCase_result == reverted_result
end

class String
def palindrome?
 super(self)
end
end

module Enumerable
def palindrome?
return self == self.reverse
end
end




test_str = "there goes the neighborhood"

if test_str.palindrome?
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if test_str.palindrome?
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

array = [1,2,3,2,1]
if array.palindrome?
puts "is palindrome"
else
puts "is not palindrome"
end