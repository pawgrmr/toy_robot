class Table
	attr_accessor :x, :y
	def initialize(width, height)
		@x = (0...width).to_a # absorbed coordinates into Table class. 
		@y = (0...width).to_a
	end
end
