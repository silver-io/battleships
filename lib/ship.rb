class Ship

	def initialize(options = {})
		
		@coordinates = options.fetch(:coordinates, "something")
	end

	def coordinates
		@coordinates
	end

end