require_relative './table'

class Robot
 attr_reader :table, :x, :y, :facing, :compass

 def initialize
 	@table = Table.new(5, 5)
 	@compass = Compass::DIRECTIONS
 end
# Place

 def place(x, y, facing)
 	@x = x
 	@y = y
 	@facing = facing
 end

# Move forward
 def move
 	case facing
 	when "north" then @y =+ 1
 	when "east" then @x =+ 1
 	when "south" then @y =- 1
 	when "west" then @y =- 1
 	end
 end

# Rotate

	def rotate(direction)
		idx = compass.index(facing)
		if direction == "left"
			shifted_index = -1
		else direction == "right"
			shifted_index = 1
		end
		@facing = compass.rotate(shifted_index)[idx]
	end
	
	# def rotate(direction)
	# 	# find index of initial facing
	# 	idx = compass.index(facing)
	# 	# direction
	# 	shifted_index = (direction == 'left') ? -1 : 1
	# 	# rotate - x.rotate(shifted_index)[idx]
	# 	@facing = compass.rotate(shifted_index)[idx]
	# end

end
