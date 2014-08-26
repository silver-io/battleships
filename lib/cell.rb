class Cell

	def initialize
		@has_ship = false
		@hit = false
	end

	def has_ship?
		@has_ship
	end

	def has_ship!
		@has_ship = true
	end

	def hit?
		@hit
	end

	def hit!
		@hit = true
	end

end