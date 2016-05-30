# Outputs a string of words with randomly generated characters
# length_r: range of allowed lengths for each word
# max_c: maximum number of consecutive consonants allowed in a word
# number: number of words

def alien_words(length_r, max_c, number)
	words = []
	letters = ('a'..'z').to_a
	vowels = %w[a e i o u]
	until words.length == number
		word = ""
		word_length = length_r.to_a.sample
		until word.length == word_length
			if word.length < max_c
				word += letters.sample
			elsif /[aeiou]/.match(word[-max_c..-1])
				word += letters.sample
			else
				word += vowels.sample
			end
		end
		words << word
	end
	words.join(" ")
end

p alien_words((3..6), 2, 5)

