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

	context "ships" do

		it "should have a corresponding size" do
			expect(game.ships[:patrol_boat]).to eq 2
			expect(game.ships[:aircraft_carrier]).to eq 5
		end

		it "can be placed inside a cell" do
			ship = Ship.new
			game.place_ship(ship, :A1)
			expect(game.board[:A1].ship).to eq ship
		end


		xit "the place ship command should take a ship type, start co-ordinate, and direction" do
			end 

		xit "should be able to place a ship" do
			game.place_ship(:patrol, :A1, :right)
			expect(game.board[:A1..:A3].ship).to eq :patrol
		end

	end


end
