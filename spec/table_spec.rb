require 'spec_helper'

RSpec.describe Table do
	describe '#initialize' do
		subject = Table.new(5, 5)

		it "has a width" do
			expect(subject.width).to eq(5)
		end

		it "has a height" do
			expect(subject.height).to eq(5)
		end

		it 'has customizable height and width' do
			customizable_object = Table.new(6, 6)
			expect(customizable_object.height).to eq(6)
			expect(customizable_object.width).to eq(6)
		end
	end
end