require 'ship'

describe Ship do

	let(:ship) { Ship.new }

	xit "has a position when initialized" do
		expect(ship.position).not_to be nil
	end
end