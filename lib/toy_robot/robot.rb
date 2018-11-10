require_relative './table'

class Robot
 attr_reader :table, :x, :y, :facing

 def initialize
 	@table = Table.new(5, 5)
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
end
