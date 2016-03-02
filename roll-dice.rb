# A function to roll any number of 6 sided dice
def roll_dice(num)

	result = 0

	die = [1,2,3,4,5,6]

	i=0
	while i < num

		result += die.sample

		i+=1
	end

	p result
	return result

end

roll_dice(1) # => rolls 1 die
roll_dice(2) # => rolls 2 dice