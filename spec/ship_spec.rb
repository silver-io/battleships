require 'ship'

describe Ship do

	let(:ship) { Ship.new }

	it 'has a size' do 
		expect(ship.size.nil?).to be false 
	end

	it 'has the size 3 per defautl' do
		expect(ship.size).to eq 3 
	end 

	it 'can have different sizes' do
		small_ship = Ship.new(2)
		big_ship = Ship.new(5)
		expect(small_ship.size).to eq 2 
		expect(big_ship.size).to eq 5 
	end 

	it 'has hitpoints equal to their size' do 
		expect(ship.hp?).to eq 3 
		small_ship = Ship.new(2)
		expect(small_ship.hp?).to eq 2
		big_ship = Ship.new(5) 
		expect(big_ship.hp?).to eq 5
	end 

	it 'can lose a hitpoint when hit' do 
		ship.hit! 
		expect(ship.hp?).to eq 2 
	end 

	it 'sinks if out of hitpoints' do 
		3.times{ ship.hit! }
		expect(ship.sunk?).to be true 
	end

	it 'can\'t be hit if sunk' do 
		3.times{ ship.hit! }
		expect{ ship.hit! }.to raise_error(RuntimeError)
	end 

end 