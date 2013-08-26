

class Robot
	attr_accessor :direction, :position_x, :position_y

	def initialize (plane, x = 0, y = 0, direction = "N")
		@plane = plane

		@position_x = x
		@position_y = y

		@direction = parse_direction direction
	end	


	def left 
		@direction = @direction + 90
		@direction = @direction - 360 if @direction >= 360
	end	

	def right
		@direction = @direction - 90
		@direction = @direction + 360 if @direction < 0
	end	

	def move 
		new_y = @position_y
		new_x = @position_x

		if @direction == 0
			new_y = @position_y + 1
		elsif @direction == 90
			new_x = @position_x - 1
		elsif @direction == 180 
			new_y = @position_y - 1
		elsif @direction == 270 
			new_x = @position_x + 1
		end	

		if validate_move new_x, new_y
			@position_y = new_y
			@position_x = new_x
		end
	end

	def tele (x, y)
		if validate_move x, y
			@position_y = y
			@position_x = x
		end
	end

	def to_s
		"x: #{@position_x} y: #{@position_y} direction: #{format_direction}"
	end

	private 

	def validate_move (x, y)

		valid = true
		if x < 0 || x > (@plane.dimension_x - 1)
			valid = false
		end
		if y < 0 || y > (@plane.dimension_y - 1)
			valid = false
		end
		valid
	end	

	def parse_direction (str)
		
		direction = 0 if str.upcase == 'N' 
		direction = 90 if str.upcase == 'O' 
		direction = 270 if str.upcase == 'E'
		direction = 180 if str.upcase == 'S' 
		direction.to_i
		
	end

	def format_direction
		str = ""
		str = 'N' if @direction == 0
		str = 'O' if @direction == 90
		str = 'E' if @direction == 270
		str = 'S' if @direction == 180
		str
	end
end