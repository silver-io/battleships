require 'ship'

describe Ship do

	let(:ship)          	{ Ship.new(20) }
	let(:fisherboat)		{ Fisherboat.new }
	let(:patrol_boat)		{ Patrol_boat.new }
	let(:destroyer)     	{ Destroyer.new }
	let(:battleship)	  	{ Battleship.new }
	let(:aircraft_carrier)	{ Aircraft_carrier.new }

		context 'ship' do 

		it 'has a size' do 
			expect(ship.size.nil?).to be false 
		end

		it 'can have different sizes' do
			expect(patrol_boat.size).to eq 2 
			expect(aircraft_carrier.size).to eq 5 
		end 

		it 'has hitpoints equal to their size' do 
			expect(ship.hp).to eq 20
			expect(patrol_boat.hp).to eq 2
			expect(aircraft_carrier.hp).to eq 5
		end 

		it 'can lose a hitpoint when hit' do 
			ship.hit! 
			expect(ship.hp).to eq 19 
		end 

		it 'sinks if out of hitpoints' do 
			20.times{ ship.hit! }
			expect(ship.sunk?).to be true 
		end

		it 'can\'t be hit if sunk' do 
			20.times{ ship.hit! }
			expect{ ship.hit! }.to raise_error(RuntimeError)
		end 
	end

	context 'fisherboat' do

		it 'has a size of 1' do 
			expect(fisherboat.size).to eq 1 
		end 
	end

	context 'patrol boat' do 

		it 'has a size of 2' do 
			expect(patrol_boat.size).to eq 2 
		end 
	end 

	context 'destroyer' do
	
		it 'has a size of 3' do
			expect(destroyer.size).to eq 3
		end
	end

	context 'battle_ship' do

		it 'has a size of 4' do 
			expect(battleship.size).to eq 4 
		end 
	end 

	context 'aircraft_carrier' do

		it 'has a size of 5' do
			expect(aircraft_carrier.size).to eq 5
		end
	end




end 