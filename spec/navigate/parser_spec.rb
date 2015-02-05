require 'spec_helper'

describe 'Parser' do
 
 let(:parser1) {Parser.new}

 it 'check parsing of input' do
  expect(parser1.parsing("1 2 north", "move move" ).class).to eq (Robot)
 end

end