require 'spec_helper'

describe 'Parser' do
 
 let(:parser1) {Parser.new}

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "move move" ).class).to eq (Robot)
 end

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 south", "move left" ).class).to eq (Robot)
 end

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "move left move" ).class).to eq (Robot)
 end

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 east", "move right" ).class).to eq (Robot)
 end

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "left right" ).class).to eq (Robot)
 end

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 west", "move move right" ).class).to eq (Robot)
 end
 
 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "right move" ).class).to eq (Robot)
 end
 
 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "left move right left" ).class).to eq (Robot)
 end
 
 it 'check parsing of input' do
  expect(parser1.parsing("1 3 east", "right move right" ).class).to eq (Robot)
 end

  it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "right move right" ).class).to eq (Robot)
 end

end