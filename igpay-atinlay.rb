# Convert a sentence into Pig Latin
## (need to create a way to discern the first letter group to move)

def igpay_atinlay(sentence)

	sentence_lower = sentence.downcase
	arr = sentence_lower.split(" ")
	result_arr = []

	i = 0
	while i < arr.count

		if (arr[i][0] == "a") || (arr[i][0] == "e") || (arr[i][0] == "i") || (arr[i][0] == "o") || (arr[i][0] == "u")
			atinlay_word = arr[i] + "way"
		else
			first_letter = arr[i].slice!(0)
			atinlay_word = arr[i] + first_letter + "ay"
		end
			
		result_arr << atinlay_word

		i+=1
	end

	result = result_arr.join(" ")
	p result

end

igpay_atinlay("This sentence has been converted into Pig Latin")
igpay_atinlay("I am sleepy")
igpay_atinlay("Goodnight")

