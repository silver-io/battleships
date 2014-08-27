require 'game'

describe Game do

	it 'creates two users upon initialization' do
		game = Game.new
		expect(game.player1.class).to eq User
		expect(game.player2.class).to eq User
	end

	it ''
end