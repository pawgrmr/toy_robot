require_relative './table'
require_relative './compass'

class Robot
 attr_reader :table, :x, :y, :facing, :compass, :placed

 def initialize
 	@table = Table.new(5, 5)
 	@compass = Compass::DIRECTIONS
 end
# Place

 def place(x, y, facing)
 	if in_boundary?(x, y) #if in_boundary? => means if it is true 
 	@x = x
 	@y = y
 	@facing = facing
 	@placed = true 
 	end
 end

# Move forward
 def move
 	return announcement unless placed
 	case facing
 	when "north" then @y =+ 1
 	when "east" then @x =+ 1
 	when "south" then @y =- 1
 	when "west" then @y =- 1
 	end
 end

# Rotate

  def rotate(direction)
  	return announcement unless placed
	idx = compass.index(facing)
		if direction == "left"
			shifted_index = -1
		else direction == "right"
			shifted_index = 1
		end
		@facing = compass.rotate(shifted_index)[idx]
  end

  def report
		p "Robot is placed at x: #{@x}, y: #{@y}, facing: #{@facing}"
  end
	
	# def rotate(direction)
	# 	# find index of initial facing
	# 	idx = compass.index(facing)
	# 	# direction
	# 	shifted_index = (direction == 'left') ? -1 : 1
	# 	# rotate - x.rotate(shifted_index)[idx]
	# 	@facing = compass.rotate(shifted_index)[idx]
	# end

	private

	def in_boundary?(x ,y)
		# x.between?(0, 4) && y.between?(0, 4)
		table.x.include?(x) && table.y.include?(y)
	end

	def announcement
		p "ROBOT NOT PLACED!"
	end

end
