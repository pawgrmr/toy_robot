require 'spec_helper'

RSpec.describe Compass do
	subject = Compass.new

	it 'has directions' do
		DIRECTIONS = %w(north east south west)
		expect(DIRECTIONS).to include("north", "east", "south", "west")
	end

	
end