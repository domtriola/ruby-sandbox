# A script to roll a die

class Die
	attr_accessor :sides

	def roll
		rand(self.sides) + 1
	end

	def roll_times(n)
		rolls = []
		n.times { rolls << self.roll }
		puts "Rolls: #{rolls.join(', ')}\nTotal: #{rolls.inject(:+)}"
	end
end

six_sided = Die.new
six_sided.sides = 6
six_sided.roll_times(2)

twenty_sided = Die.new
twenty_sided.sides = 20
twenty_sided.roll_times(2)
