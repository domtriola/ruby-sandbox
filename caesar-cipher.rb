#Alphabetically shifts the letters in a string by a specified amount
def caesar(string, num)

	result = []
	words = string.downcase.split(" ")

	words.each do |word|
		new_chars = ""
		word.each_char do |char|
			if (char.ord + num <= "z".ord)
				new_chars += (char.ord + num).chr
			else 
				new_chars += ((char.ord + num) - "z".ord + ("a".ord - 1)).chr
			end
		end

		result << new_chars
	end

	result.join(" ")
end


p caesar("hello", 3) # => "khoor"
p caesar("hello world", 3)
p caesar("Zeus exits the arena", 3)
p caesar("Athena enters the arena", 12)
