require 'cell'
require 'ship'

describe Cell do

	let(:cell) { Cell.new }
	let(:destroyer) { Destroyer.new }
	
	it "should not have a ship by default" do
		expect(cell.ship).to eq nil
	end

	it "should not have been hit by default" do
		expect(cell.hit?).to eq false
	end

	it "should know when it has been hit" do
		cell.hit!
		expect(cell.hit?).to eq true
	end

	it "should know when the ship in the cell is sunk" do
		cell.set_ship(destroyer)
		3.times { cell.hit! }
		expect(cell.is_ship_sunk?).to be true
	end

	it 'should not be sunk if not damaged' do 
		cell.set_ship(destroyer)
		expect(cell.is_ship_sunk?).to be false 
	end 

	it '@ship should return ":sunk" if the ship sunk' do 
		cell.set_ship(destroyer)
		3.times { cell.hit! } 
		expect(cell.sunk?).to eq :sunk 
	end 
	
end