require 'game'
require 'board'
require 'cell'

describe Game do
	let(:game) { Game.new }

	context "input" do
		
		it 'should be initialized with a board' do # update this to two boards later!
			expect(game.board.class).to eq Board
		end


		it "should be able to hit a specific cell" do
			game.hit(:A1)
			puts game.board[:A1].hit?
			expect(game.board[:A1].hit?).to eq true
		end

	end


end
