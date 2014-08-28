require 'user'
require 'board'
require 'cell'

describe User do

	let(:user)    { User.new     }
	

	it 'should be able to create a board' do
		user.create_board
		expect(user.has_board?).to eq true
	end

	xit 'place a ship' do
		user.insert_ship_into_cell
	end

	context "input" do
		
		it 'should be initialized with a board' do # update this to two boards later!
			expect(user.board.class).to eq Board
		end


		it "should be able to hit a specific cell" do
			user.hit(:A1)
			expect(user.board[:A1].hit?).to eq true
		end

	end

	context "ships" do

		let(:carrier) { double :ship, :length => 3 }

		it 'can be placed on a cell' do
			user.place(carrier, :A1, :A2, :A3)
			expect(user.board[:A1].ship).to eq carrier
		end


		xit "can be placed over several cells" do
			#ship = Ship.new
			#ga
		end 

		xit "the place ship command should take a ship type, start co-ordinate, and direction" do
			end 

		xit "should be able to place a ship" do
			user.place_ship(:patrol_boat, "A1", "vertical")
			expect(board[:A1].ship).to eq true
			
		end

	end


end

