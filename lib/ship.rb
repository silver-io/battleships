class Ship

	def initialize(size=3)
		@size = size 
		@hitpoints = size 
	end 

	def size 
		@size 
	end 

	def hp? 
		@hitpoints 
	end 

	def hit! 
		raise "this ship already sunk" if @hitpoints == 0 
		@hitpoints -= 1 
	end 

	def sunk? 
		@hitpoints == 0 
	end



	

end