### A programmatic proof of one of my favorite riddles
#
# Ten gnomes are captured by an evil wizard.
#
# The gnomes know that tomorrow they will be lined up in a single file line,
# all facing the same direction so that each gnome only sees the gnomes
# in front of him or her. Then each gnome will have a red or white hat
# placed on their head. Starting with the gnome in back each gnome will
# get one chance to guess the color of his/her own hat. If they are right
# they live. Otherwise they die.
#
# The night before the execution the gnomes devise a plan to guarantee the
# survival of at least 9 of themselves.
#
# What is there plan?



def wizards_trial()

	#Initialize hats and gnomes
	hats = ["red", "white"]
	gnomes = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]

	#Line up gnomes and place hats on them
	hatted_gnomes = {}
	gnomes.each do |gnome|
		hatted_gnomes[gnome] = hats.sample
	end


end

wizards_trial()







