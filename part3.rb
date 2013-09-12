def combine_anagrams(words)
    sorted_words = Array.new
    return_array = Array.new
    words.each { |w|
	sorted_words.push w.chars.sort_by(&:downcase).join
	}
    sorted_words.each{ |sw|
	array=Array.new
        if(sw != nil)
		index = sorted_words.index(sw)
		while  index != nil
			array.push(words[index])
     			sorted_words[index] = nil
			index = sorted_words.index(sw)
		end
	end
	return_array.push(array)
	}
    puts return_array
   
end

words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 


combine_anagrams(words)


# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]