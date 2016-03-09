# Convert a sentence into Pig Latin
## (need to create a way to discern the first letter group to move)

def igpay_atinlay(sentence)
	
	arr = sentence.downcase.split(" ")
	result = []

	arr.each do |item|

		if (item[0] == "a") || (item[0] == "e") || (item[0] == "i") || (item[0] == "o") || (item[0] == "u")
			atinlay_word = item + "way"
		else
			first_letter = item.slice!(0)
			atinlay_word = item + first_letter + "ay"
		end
			
		result << atinlay_word
	end

	result = result.join(" ")
	p result
end

igpay_atinlay("This sentence has been converted into Pig Latin")
igpay_atinlay("I am sleepy")
igpay_atinlay("Goodnight")

