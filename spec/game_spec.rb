require 'game'

describe Game do

	context 'initialization' do

		it 'creates two users upon initialization' do
			game = Game.new
			expect(game.player1.class).to eq User
			expect(game.player2.class).to eq User
		end

		it 'each player has a board' do
			game = Game.new
			expect(game.player1).to have_board
			expect(game.player2).to have_board
		end
	end

	context 'player interaction' do

		it ''
	end


end