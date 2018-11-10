require 'spec_helper'

RSpec.describe Compass do
	subject = Compass::DIRECTIONS #Namespace

	it 'has directions of "north", "east", "south", "west"' do
		expect(subject).to include("north", "east", "south", "west")
	end
end