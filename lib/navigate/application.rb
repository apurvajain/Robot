#To start the application
class Application

 def initialize 
  @robot1 = Robot.new(1,1,"north")
 end

 def start
 
  parser1 = Parser.new()

  begin
  print "$ "
  input = gets.chomp
  input1 = gets.chomp
  command = parser1.parsing(input, input1)
  command.print
  end while input != 'exit'
 end

 def start_test
  parser1 = Parser.new
  input = Kernel.gets.chomp
  cmd = parser1.parsing(input)
 end 
 
end