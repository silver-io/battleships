require 'game'
require 'stringio'

describe Game do

	let(:game) { Game.new }

	context 'initialization' do

		it 'creates two users upon initialization' do
			expect(game.player1.class).to eq User
			expect(game.player2.class).to eq User
		end

		it 'each player has a board' do
			expect(game.player1).to have_board
			expect(game.player2).to have_board
		end
	end

	context 'player interaction' do

		it 'should ask player 1 for their name and set it' do
			expect(STDIN).to receive(:gets).and_return("Bob")
			expect(game.get_name_player_1).to eq "Bob"
			expect(game.player1.name).to eq "Bob"
		end

		it 'should ask player 2 for their name and set it' do
			expect(STDIN).to receive(:gets).and_return("Alice")
			expect(game.get_name_player_2).to eq "Alice"
			expect(game.player2.name).to eq "Alice"
		end

end

	context 'placing ships' do
		it 'should ask player 1 to place their ships' do
			expect(game.player1).to receive(:place_ships)
			game.player1.place_ships # gets player to place all of their ships
		end

		it 'should ask player 2 to place their ships' do
			expect(game.player2).to receive(:place_ships)
			game.player2.place_ships # gets player to place all of their ships
		end
	end

	context 'playing the game' do
		
		xit 'it should check to see if p2 has any ships left and declare p1 victory if not' do
		end

		xit 'should ask player 1 what cell to hit' do
		end

		xit 'if p1 hits a ship, p1 should get another go' do
		end

		xit 'it should check to see if p1 has any ships left and declare p2 victory if not' do
		end

		xit 'should ask player 2 what cell to hit' do
		end

		xit 'if p2 hits a ship, p2 should get another go' do
		end

	end

end	