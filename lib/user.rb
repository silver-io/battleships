require 'cell'
require 'ship'

class User


	# SHIP_TYPES = {:tiny => 1,
	# :patrol_boat => 2,
	# :destroyer => 3,
	# :submarine => 3,
	# :Battleship => 4,
	# :aircraft_carrier => 5}

	# HORIZONTAL = -> { coord.reverse.first.to_i }
	# VERTICAL = -> { coord.first.to_i(27)-9 }

	attr_accessor :name
	attr_accessor :score

	def initialize
		@board = Board.new
		@score = 5
	end

	def has_board?
		@board != nil
	end

	def board
		@board
	end

	def hit(cell)
		@board[cell].hit!
	end

	def place(ship, *coords)
		@ship_coords = *coords
		raise "sorry" if @ship_coords.any? { |coord|  board[coord].has_ship? }
		@ship_coords.each { |coord| board[coord].set_ship(ship) }
	end

	#ary_coord = coord.to_s.split(/\D/).drop(1)

	def place_ship(ship, direction, coord)
		if direction == "down" then
			place_ship_down(ship, coord)
		else 
			place_ship_right(ship, coord)
		end
	end


	def place_ship_right(ship, coord)

		ary_coord = coord.to_s.split("")

		ship.size.times {
			@board[ary_coord.join.to_sym].set_ship(ship)
			number_element = ary_coord[1].to_i
			number_element += 1
			ary_coord[1] = number_element }
	end 

	def place_ship_down(ship, coord)

		ary_coord = coord.to_s.split("")

			ship.size.times {
			@board[ary_coord.join.to_sym].set_ship(ship)
			number_element = ary_coord[0].to_i(27)+55
			number_element += 1
			ary_coord[0] = number_element.chr }
	end 

end




	# def insert_ship_into_cell(ship, coordinate)
	# 	@board[coordinate].set_ship(ship)
	# end

	 # def orientation(ship, coord, axis)
	 # 	raise "this is not an axis" if axis != "vertical" && "horizontal"
		# if axis == "vertical"
	 # 		then
	 # 		@coordinate_letter = coord.chop.to_i(27)-9
	 # 		else @coordinate_number = coord.reverse.chop.to_i
	 # 		ship.size.times { @coordinate_number += 1; @coordinate_letter += 1; 
	 # 		coordinates = "#{letter}#{number}".to_sym; 
	 # 		raise "sorry" if @ship_coords.any? { |coord|  board[coord].has_ship? }
		# 	ship_coords.each { |coord| board[coord].set_ship(ship) } }
		# end



	# 	
	# 

	# end
