# Generates a random word
# length: length of each word
# number: number of words
# maxc: maximum number of consonants in a row

def alien_words(length, number, maxc)
	words = []
	letters = ('a'..'z').to_a
	vowels = %w[a e i o u]
	until words.length == number
		word = ""
		until word.length == length
			if word.length < maxc
				#puts 'first letters'
				word += letters.sample
			elsif /[aeiou]/.match(word[-maxc..-1])
				#puts word[-maxc..-1] + ': not too many consonants'
				word += letters.sample
			else
				#puts word[-maxc..-1] + ': too many consonants'
				word += vowels.sample
			end
		end
		words << word
	end
	words.join(" ")
end

p alien_words(5, 4, 2)

