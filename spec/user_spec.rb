require 'user'
require 'board'
require 'cell'
require 'ship'

describe User do

	let(:user)    { User.new     }


	context "input and initialization" do
		
		it 'should be initialized with a board' do
			expect(user.board.class).to eq Board
		end

		it 'score should be 15 to start with' do
			expect(user.score).to eq 15
		end


		it "should be able to hit a specific cell" do
			user.hit(:A1)
			expect(user.board[:A1].hit?).to eq true
		end

	end

	context "placing ships" do

		let(:carrier) { double :ship, :length => 3 }

		it 'knows where to place the ship given axis and starting cell' do
			patrol_boat = Patrol_boat.new
			user.place_ship(patrol_boat, "down", :A1)
			expect(user.board[:B1].ship).to eq patrol_boat
		end

		it 'knows it has been placed' do
			patrol_boat = Patrol_boat.new
			user.place_ship(patrol_boat, "down", :A1)
			expect(patrol_boat).to be_placed
		end

		it 'the same ship can not be placed twice' do
			patrol_boat = Patrol_boat.new
			user.place_ship(patrol_boat, "down", :A1)
			expect{(user.place_ship(patrol_boat, "down", :A1))}.to raise_error
		end

		xit 'should ask the player to place each of their ships' do

		end


	end


end

