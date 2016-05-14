# This is a function to randomize chess pieces for chess 960
# Use it to randomize the starting position of the white pieces, 
# then mirror the positions for black, and enjoy a unique game 
# of chess!

def randChess()
	white = ["rook1", "knight1", "bishop1", "queen", "king", "bishop2", "knight2", "rook2"]
	white = white.shuffle
	if white.index("bishop1") % 2 == 0
		return white if white.index("bishop2") % 2 != 0
		return randChess()
	else
		return white if white.index("bishop2") % 2 != 1
		return randChess()
	end
end

p randChess()
