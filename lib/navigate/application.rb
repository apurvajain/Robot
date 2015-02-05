#To start the application
class Application

 def initialize 
  @robot1 = Robot.new(1,1,"north")
 end

 def start
 
  parser1 = Parser.new()
  print "$ "
  inputc = gets.chomp
  begin
  print "$ "
  input = gets.chomp
  print "$ "
  input1 = gets.chomp
  command = parser1.parsing(inputc, input, input1)
  command.print
  end while input!= 'exit'
 end

 def start_test
  parser1 = Parser.new
  input = Kernel.gets.chomp
  cmd = parser1.parsing(input)
 end 
 
end