### A programmatic proof of one of my favorite riddles
#
# Ten gnomes are captured by an evil wizard.
#
# The gnomes know that tomorrow they will be lined up in a single file line,
# all facing the same direction so that each gnome only sees the gnomes
# in front of him or her. Then each gnome will have a red or white hat
# placed on their head. Starting with the gnome in back each gnome will
# get one chance to guess the color of his/her own hat. If that gnome is right
# he/she lives. Otherwise he/she dies.
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

#wizards_trial()


#Compare gnome guesses to the actual hat placements - takes in two hashes as parameters
def judge_the_gnomes(guesses, placements)

	live_gnomes = []
	dead_gnomes = []

	guesses.each do |key, value|
		if value == placements[key]
			live_gnomes << key
		else
			dead_gnomes << key
		end
	end

	print "Live gnomes: " 
	p live_gnomes
	print "Dead gnomes: "
	p dead_gnomes

end

#judge_the_gnomes({"one"=>"red", "two"=>"white"}, {"one"=>"red", "two"=>"white"})
#judge_the_gnomes({"one"=>"red", "two"=>"white"}, {"one"=>"white", "two"=>"red"})
#judge_the_gnomes({"one"=>"red", "two"=>"white"}, {"one"=>"red", "two"=>"red"})



#Have the gnomes assign guesses to themselves, following the constraints of the puzzle
#placements will be the hash "hatted_gnomes" from wizards_trial
def gnome_guesses(placements)

	guesses = {}

	white_hats_ahead = 0

	#count white hats ahead of gnome "one"
	placements.each do |gnome, hat|
		unless gnome == "one"
			white_hats_ahead += 1 if hat == "white"
		end
	end

	#set a starting total to compare to
	white_hats_total = white_hats_ahead

	#the first gnome will say "white" if he/she sees an even number of white hats
	#or "red" for an odd number of white hats
	if white_hats_ahead % 2 == 0
		guesses["one"] = "white"
	else
		guesses["one"] = "red"
	end

	#the rest of the gnomes will guess according to what they see
	#and know their own hat to be
	placements.each do |gnome, hat|
		

		if gnome == "one"
			#set prev gnome guess to guesses["one"]
			prev_guess = guesses[gnome]
		else
			#remove the current gnome's hat from the white hat count if it is white
			white_hats_ahead -= 1 if hat == "white"

			#have gnome evaluate if he is white or red
			

			prev_guess = guesses[gnome]
		end
	end

	

end












