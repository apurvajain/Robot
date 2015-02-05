require 'spec_helper'

describe 'Application' do

 it 'checks the launching of application' do
  
  parser1 = Parser.new
  allow(Parser).to receive(:new) { parser1}
  allow(Kernel).to receive(:gets) {"2 2 north"}
  expect(parser1).to receive(:parsing).with("2 2 north")

  app = Application.new
  app.start_test
 end
end  