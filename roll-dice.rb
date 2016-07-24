# A script to roll a die

class Die
	def initialize(sides)
		@sides = sides

		if defined?(@@dice)
			@@dice << @sides
		else
			@@dice = [@sides]
		end
	end

	def self.dice_created
		@@dice.map { |die| "#{die.to_s}-sided" }
	end

	def roll
		rand(@sides) + 1
	end

	def roll_times(n)
		rolls = []
		n.times { rolls << self.roll }
		puts "Rolls: #{rolls.join(', ')}\nTotal: #{rolls.inject(:+)}"
	end
end

six_sided = Die.new(6)
six_sided.roll_times(2)

twenty_sided = Die.new(20)
twenty_sided.roll_times(2)

p Die.dice_created
