# This is a function to randomize chess pieces for chess 960
# Use it to randomize the starting position of the white pieces, 
# then mirror the positions for black, and enjoy a unique game 
# of chess!

def randChess()
	#starting positions
	pieces = {
		rook1: "a1",
		knight1: "a2",
		bishop1: "a3",
		queen: "a4",
		king: "a5",
		bishop2: "a6",
		knight2: "a7",
		rook2: "a8"
	}

	#new positions
	positions = ["a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8"].shuffle

	#assign new positions
	i=0
	pieces.each do |piece, position|
		pieces[piece] = positions[i]
		i+=1
	end
	pieces
end

p randChess()