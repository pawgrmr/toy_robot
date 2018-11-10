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

# Rotate
end
