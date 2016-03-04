#need to fix letters destined to be 'z'
def caesar(string, num)

	arr = string.split(" ")
	result = []

	i = 0
	while i < arr.length

		word_num = []
		arr[i].each_byte {|c| word_num << c}

		new_chars = ""
		word_idx = 0
		while word_idx < word_num.length

			if (word_num[word_idx] + num < "z".ord)
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
caesar("zeus exits the arena", 3)
caesar("athena enters the arena", 12)
