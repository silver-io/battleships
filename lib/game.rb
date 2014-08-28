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

	def get_name_player_1(user_input = gets.chomp)
		player1.name = user_input
	end

	def get_name_player_2(user_input = gets.chomp)
		player2.name = user_input
	end
end
