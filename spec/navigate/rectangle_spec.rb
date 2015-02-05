require 'spec_helper'

describe Rectangle do

 let(:rectangle1) {Rectangle.new(5, 5)}
  
 it  "checks left coordinates " do
  expect(rectangle1.left_coords).to eq([0, 0])
 end 
  
 it  "checks right coordinates" do
  expect(rectangle1.right_coords).to eq([5, 5])
 end

end  