require 'board'

describe Board do
	
	let(:board) { Board.new }

	it "is a hash with 100 items" do
			expect(board.count).to eq 100
	end

end