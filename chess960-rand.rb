# This is a function to randomize chess pieces for chess 960
# Use it to randomize the starting position of the white pieces, 
# then mirror the positions for black, and enjoy a unique game 
# of chess!

def randChess()
	#starting positions
	pieces = {
		rook1: 1,
		knight1: 2,
		bishop1: 3,
		queen: 4,
		king: 5,
		bishop2: 6,
		knight2: 7,
		rook2: 8
	}

	#new positions
	positions = [1, 2, 3, 4, 5, 6, 7, 8].shuffle

	#assign new positions
	i=0
	pieces.each do |piece, position|
		pieces[piece] = positions[i]
		i+=1
	end

	if pieces[:bishop1] % 2 == 0
		if pieces[:bishop2] % 2 == 1
			return pieces
		else
			puts "rand1"
			return randChess()
		end
	elsif pieces[:bishop2] % 2 == 0
		return pieces
	else
		puts "rand2"
		return randChess()
	end
end

p randChess()




