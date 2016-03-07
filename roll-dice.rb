# A function to roll any number of dice with any number of sides
def roll_dice(rolls, sides)

	result = 0
	die = []

	i=0
	while i < sides
		die << i+1
		i+=1
	end

	rolls.times do
		result += die.sample
	end

	result

end

p roll_dice(1,6) # => rolls 1 six-sided die
p roll_dice(2,6) # => rolls 2 six-sided dice
p roll_dice(1,2) # => rolls 1 two-sided die (like flipping a coin)
p roll_dice(1,20) # => rolls 1 twenty-sided die