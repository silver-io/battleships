require 'cell'

describe Cell do

	let(:cell) { Cell.new }
	
	it "should not have a ship by default" do
		expect(cell.has_ship?).to eq false
	end
	
end