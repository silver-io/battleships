require 'cell'
require 'ship'

class User


	# SHIP_TYPES = {:tiny => 1,
	# :patrol_boat => 2,
	# :destroyer => 3,
	# :submarine => 3,
	# :Battleship => 4,
	# :aircraft_carrier => 5}

	HORIZONTAL = -> { coord.reverse.first.to_i }
	VERTICAL = -> { coord.first.to_i(27)-9 }




	def has_board?
		@board != nil
	end


	def initialize
		@board = Board.new
	end

	def board
		@board
	end

	def hit(cell)
		@board[cell].hit!
	end

	def place(ship, *coords)
		@ship_coords = *coords
		raise "sorry" if @ship_coords.any? { |coord|  board[coord].has_ship? }
		@ship_coords.each { |coord| board[coord].set_ship(ship) }
	end



	# def insert_ship_into_cell(ship, coordinate)
	# 	@board[coordinate].set_ship(ship)
	# end

	# def place_ship(ship, coord, axis)
	# 	raise "this is not an axis" if axis != "vertical" && "horizontal"
	# 	coordinate = coord.chop.to_i 
	# 	if axis == "vertical"
	# 	else coordinate = coord.reverse.chop.to_i(27)-9 
	# 	number = SHIP_TYPES[ship]
	# 	ship = Ship.new 
	# 	number.times { @board[(coordinate += 56).chr ].set_ship(ship) }

	# end
end