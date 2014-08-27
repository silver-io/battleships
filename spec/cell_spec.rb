require 'cell'

describe Cell do

	let(:cell) { Cell.new }
	
	it "should not have a ship by default" do
		expect(cell.ship).to eq false
	end

	it "should not have been hit by default" do
		expect(cell.hit?).to eq false
	end

	it "should know when it has been hit" do
		cell.hit!
		expect(cell.hit?).to eq true
	end


	
end