require 'cell'
require 'ship'

class User

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

	def place_ship(ship, direction, coord)
		raise 'Ship already placed' if ship.placed? == true
		if direction == "down" then
			place_ship_down(ship, coord)
		else 
			place_ship_right(ship, coord)
		end
		ship.place
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
