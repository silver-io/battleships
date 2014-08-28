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

	def get_name_player_1
		puts "Player 1, what is your name?"
		player1.name = $stdin.gets.chomp
	end

	def get_name_player_2
		puts "Player 2, what is your name?"
		player2.name = $stdin.gets.chomp
	end
end
