# Convert a sentence into Pig Latin
def to_pig_latin(word)
  if word == word.capitalize
    was_capitalized = true
  else
    was_capitalized = false
  end
  letters = word.downcase[/\w+/]
  punctuation = word.gsub(/\w+/, "")
  vowels = %w{ a e i o u }

	if vowels.include?(letters[0])
    if was_capitalized
      return letters.capitalize + "ay" + punctuation
    else
      return letters + "ay"
    end
	else
		chars_to_move = ""
		vowel_found = false
		until vowel_found || letters == ""
			if !vowels.include?(letters[0])
				chars_to_move += letters[0]
				letters[0] = ""
			elsif letters[0] == "u" && chars_to_move[-1] == "q"
				chars_to_move += letters[0]
				letters[0] = ""
			else
				vowel_found = true
			end
		end
    if was_capitalized
      return letters.capitalize + chars_to_move + "ay" + punctuation
    else
      return letters + chars_to_move + "ay" + punctuation
    end
	end
end

def translate(string)
  string.split(" ").map { |word| to_pig_latin(word) }.join(" ")
end

p translate("This sentence has been converted into Pig Latin")
p translate("I am sleepy")
p translate("Goodnight")
p translate("tst")
p translate("testing... for punctuation, now?")
