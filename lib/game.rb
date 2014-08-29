require_relative '../lib/cell.rb'
require_relative '../lib/board.rb'
require_relative '../lib/user.rb'
require_relative '../lib/ship.rb'

class Game

	attr_reader :player1, :player2

	def initialize
		@player1 = User.new
		@player2 = User.new
	end

	def get_name_player_1
		puts "Player 1, what is your name?"
		player1.name = $stdin.gets.chomp
	end

	def get_name_player_2
		puts "Player 2, what is your name?"
		player2.name = $stdin.gets.chomp
	end

	def player1_place_ships
		STDOUT.puts "Player 1, place your ships."
	end



end
