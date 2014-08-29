class Board < Hash # ensures Board is itself a type of Hash

	def initialize
		('A'..'J').each do |letter|
			(1..10).each do |number|
				coordinates = "#{letter}#{number}"
				self[coordinates.to_sym] = Cell.new
			end
			
		end
		
	end



end