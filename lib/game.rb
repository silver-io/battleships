require 'cell'
require 'board'

class Game

	SHIP_TYPES = {:tiny => 1,
			:patrol_boat => 2,
			:destroyer => 3,
			:submarine => 3,
			:Battleship => 4,
			:aircraft_carrier => 5}

	def initialize
		@board = Board.new
	end

	def board
		@board
	end

	def hit(cell)
		# board -. cell number -. cel.hit = true
		@board[cell].hit!
	end


	def insert_ship_into_cell(ship, coordinate)
		@board[coordinate].set_ship(ship)
	end

	def place_ship(ship, coord, axis)
		number = SHIP_TYPES[ship]
		
	end
end
