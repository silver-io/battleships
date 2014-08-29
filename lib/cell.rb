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
		raise "This cell has already been hit" if @hit == true
		@hit = true 
		@ship.hit! if @ship.nil? == false
	end

	def set_ship(ship)
		@ship = ship
	end

	def is_ship_sunk?
		@ship.sunk? 
	end 

	def sunk? 
		@sunk = true if is_ship_sunk? 
	end

end