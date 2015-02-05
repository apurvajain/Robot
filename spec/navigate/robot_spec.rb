require 'spec_helper'

describe 'Robot' do
 
 let(:robot1) {Robot.new(1,1,"north")}

 it 'Check robot navigation' do
  expect(robot1.navigate("move")).to eq (Robot.new(1,2,"north"))
 end

end