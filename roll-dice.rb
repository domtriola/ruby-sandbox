# A function to roll any number of 6 sided dice
def roll_dice(rolls, sides)

	result = 0
	die = []

	i=1
	while i < (sides + 1)
		die << i
		i+=1
	end

	i=0
	while i < rolls
		result += die.sample
		i+=1
	end

	p result
	return result

end

roll_dice(1,6) # => rolls 1 six-sided die
roll_dice(2,6) # => rolls 2 six-sided dice
roll_dice(1,2) # => rolls 1 two-sided die (like flipping a coin)
roll_dice(1,20) # => rolls 1 twenty-sided die