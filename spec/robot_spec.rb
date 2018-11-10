require 'spec_helper'

RSpec.describe Robot do
	robot = Robot.new()
	describe "#initialize" do
		it 'creates a table with 4x4 coordinate' do
			expect(subject.table.class).to be(Table) 
			expect(subject.table.x).to eq([0,1,2,3,4])
			expect(subject.table.y).to eq([0,1,2,3,4])
		end
	end

	describe "#place" do
		robot.place(0, 0, "west")
		it 'has x coordinate' do
			expect(robot.x).to eq(0)
		end

		it 'has y coordinate' do
			expect(robot.y).to eq(0)
		end

		it 'has facing' do
			expect(robot.facing).to eq("west")
		end
	end

	# describe "#move" do
	# 	it 'moves from (0, 0 north) to (0, 1 north)'
	# 		robot.place(0, 0, "north") 
	# 		expect(robot.move).to eq
	# 	end
	# end
end

# if 0, 0 north -- 0, 1 north 