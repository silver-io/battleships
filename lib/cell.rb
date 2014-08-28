require 'ship'

class Cell

	def initialize
		@ship = nil
		@hit = false
	end

	def ship
		@ship
	end

	def has_ship?
		!@ship.nil?
	end

	def hit?
		@hit
	end

	def hit!
		@hit = true
		@ship.hit! if @ship.nil? == false
	end

	def set_ship(ship)
		@ship = ship
	end

	def ship_sunk?
		@ship.sunk? 
	end 


end