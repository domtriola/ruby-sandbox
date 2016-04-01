# Convert a sentence into Pig Latin
def is_a_vowel?(char)
	char = char.downcase
	if (char == "a") || (char == "e") || (char == "i") || (char == "o") || (char == "u")
		return true
	else
		return false
	end
end

def igpay_atinlay(sentence)
	
	arr = sentence.downcase.split(" ")
	result = []

	arr.each do |item|

		if is_a_vowel?(item[0])
			atinlay_word = item + "way"
		elsif is_a_vowel?(item[1])
			first_letter = item.slice!(0)
			atinlay_word = item + first_letter + "ay"
		else
			first_chars = item.slice!(0..1)
			atinlay_word = item + first_chars + "ay"
		end
			
		result << atinlay_word
	end

	result = result.join(" ")
end

p igpay_atinlay("This sentence has been converted into Pig Latin")
p igpay_atinlay("I am sleepy")
p igpay_atinlay("Goodnight")

