require 'spec_helper'

RSpec.describe Table do
	describe '#initialize' do
		subject = Table.new(5, 5)

		it "has a coordinate x" do
			expect(subject.x).to eq([0,1,2,3,4])
		end

		it "has a coordinate y" do
			expect(subject.y).to eq([0,1,2,3,4])
		end

		it 'has customizable height and width' do
			customizable_table = Table.new(6, 6)
			expect(customizable_table.x).to eq([0,1,2,3,4,5])
			expect(customizable_table.y).to eq([0,1,2,3,4,5])
		end
	end
end