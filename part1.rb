def palindrome?(str)
  replace_result=  str.gsub(/[^a-zA-Z]/,"")
  downCase_result = replace_result.downcase
  reverted_result = downCase_result.reverse

  downCase_result == reverted_result
end

def count_words(str)
   words_count = {}
   downCase_result = str.downcase
   words_array = downCase_result.split(/\s+/)
   words_array.each{ |word|
	words_count[word]= downCase_result.scan(/\b#{word}\b/).length
	}
return words_count
end

test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count
