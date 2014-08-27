require 'cell'
require 'board'
require 'user'

class Game

	def initialize
		@player1 = User.new
		@player2 = User.new
	end

	def player1
		@player1
	end

	def player2
		@player2
	end


end
