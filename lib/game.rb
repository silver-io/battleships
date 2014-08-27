require 'cell'
require 'board'

class Game

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

	def ships
		@ships = {:tiny => 1,
			:patrol_boat => 2,
			:destroyer => 3,
			:submarine => 3,
			:Battleship => 4,
			:aircraft_carrier => 5}
	end

	def place_ship(ship, coordinates)
		@board[coordinates].set_ship(ship)
	end
end
