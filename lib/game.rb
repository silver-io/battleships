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

end
