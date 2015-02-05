require 'spec_helper'

describe 'Robot' do
 
  let(:robot1) {Robot.new(1,1,"north")}
  let(:robot2) {Robot.new(1,1,"south")}
  let(:robot3) {Robot.new(1,1,"east")}
  let(:robot4) {Robot.new(1,1,"west")}

 it 'Check robot navigation' do
  expect(robot1.navigate("move")).to eq (Robot.new(1,2,"north"))
 end

 it 'Check robot navigation' do
  expect(robot1.navigate("left")).to eq (Robot.new(1,1,"west"))
 end

 it 'Check robot navigation' do
  expect(robot1.navigate("right")).to eq (Robot.new(1,1,"east"))
 end

 it 'Check robot navigation' do
  expect(robot2.navigate("move")).to eq (Robot.new(1,0,"south"))
 end

 it 'Check robot navigation' do
  expect(robot3.navigate("left")).to eq (Robot.new(1,1,"north"))
 end

 it 'Check robot navigation' do
  expect(robot4.navigate("left")).to eq (Robot.new(1,1,"south"))
 end

 it 'Check robot navigation' do
  expect(robot2.navigate("right")).to eq (Robot.new(1,1,"west"))
 end

 it 'Check robot navigation' do
  expect(robot3.navigate("right")).to eq (Robot.new(1,1,"south"))
 end

 it 'Check robot navigation' do
  expect(robot3.navigate("move")).to eq (Robot.new(2,1,"east"))
 end

 it 'Check robot navigation' do
  expect(robot4.navigate("move")).to eq (Robot.new(0,1,"west"))
 end

 it 'Check robot navigation' do
  expect(robot2.navigate("left")).to eq (Robot.new(1,1,"east"))
 end

 it 'Check robot navigation' do
  expect(robot4.navigate("right")).to eq (Robot.new(1,1,"north"))
 end

 it 'Check robot navigation' do
  expect(robot1.navigate("right")).to eq (Robot.new(1,1,"east"))
 end
end