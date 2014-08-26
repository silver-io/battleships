require 'ship'

describe Ship do

	let(:ship) { Ship.new }

	it "should have co-ordinates" do
		expect(ship.coordinates).not_to eq nil
	end

	it "should returns its co-ordinates when asked" do
		ship1 = Ship.new({:coordinates => [:A1,:B1]})
		expect(ship1.coordinates).to eq [:A1, :B1]
	end

end