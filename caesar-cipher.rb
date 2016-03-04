#Alphabetically shifts the letters in a string by a specified amount
def caesar(string, num)

	arr = string.downcase.split(" ")
	result = []

	i = 0
	while i < arr.length

		word_num = []
		arr[i].each_byte {|c| word_num << c}

		new_chars = ""
		word_idx = 0
		while word_idx < word_num.length

			if (word_num[word_idx] + num <= "z".ord)
				new_chars += (word_num[word_idx] + num).chr
			else 
				new_chars += ((word_num[word_idx] + num) - ("z".ord) + ("a".ord - 1)).chr
			end

			word_idx += 1
		end

		result << new_chars

		i+=1
	end

	puts result.join(" ")
	return result.join(" ")

end


caesar("hello", 3) # => "khoor"
caesar("hello world", 3)
caesar("Zeus exits the arena", 3)
caesar("Athena enters the arena", 12)
