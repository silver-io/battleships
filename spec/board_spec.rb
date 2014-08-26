require 'board'

describe Board do
	
	let(:board) { Board.new }
	let(:cell)  { double :Cell}

	it "has 100 items" do
			expect(board.count).to eq 100
	end

	it "each value within the hash should be a Cell" do
			expect(board[:A1].class).to eq Cell
	end

end