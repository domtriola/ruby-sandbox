# Convert a sentence into Pig Latin
def to_pig_latin(word)
	word = word.downcase
	vowels = %w{ a e i o u }
	if vowels.include?(word[0])
		return word + "ay"
	else
		chars_to_move = ""
		vowel_found = false
		until vowel_found || word == ""
			if !vowels.include?(word[0])
				chars_to_move += word[0]
				word[0] = ""
			elsif word[0] == "u" && chars_to_move[-1] == "q"
				chars_to_move += word[0]
				word[0] = ""
			else
				vowel_found = true
			end
		end
		return word + chars_to_move + "ay"
	end
end

def translate(string)
  string.split(" ").map { |word| to_pig_latin(word) }.join(" ")
end

p translate("This sentence has been converted into Pig Latin")
p translate("I am sleepy")
p translate("Goodnight")
p translate("tst")
