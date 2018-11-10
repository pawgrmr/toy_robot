class Table
	attr_accessor :x, :y
	def initialize(width, height)
		@x = width - 1 # absorbed coordinates into Table class. 
		@y = height - 1
	end

end
