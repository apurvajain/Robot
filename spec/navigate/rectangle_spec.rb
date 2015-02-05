require 'spec_helper'

describe Rectangle do

 let(:rectangle1) {Rectangle.new(5, 5)}
  
 it  "checks left coordinates " do
  expect(rectangle1.left_coords).to eq([0, 0])
 end 
  
 it  "checks right coordinates" do
  expect(rectangle1.right_coords).to eq([5, 5])
 end

 it  "checks is_inside" do
  expect(rectangle1.is_inside(Robot.new(1, 2, "north"))).to eq true
 end

  it  "checks is_inside" do
  expect(rectangle1.is_inside(Robot.new(-1, 2, "east"))).to eq false
 end

  it  "checks is_inside" do
  expect(rectangle1.is_inside(Robot.new(1, 3, "south"))).to eq true
 end

  it  "checks is_inside" do
  expect(rectangle1.is_inside(Robot.new(1, 6, "west"))).to eq false
 end 

end  