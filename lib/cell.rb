class Cell

	def initialize
		@ship = false
		@hit = false
	end

	def ship
		@ship
	end


	def hit?
		@hit
	end

	def hit!
		@hit = true
	end

	def set_ship(ship)
		@ship = ship
	end


end