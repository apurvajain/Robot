#takes the current position and orientation of robot.
class Robot 

 attr_reader :x, :y , :dir
 def initialize(x,y,dir)
  @x = x
  @y = y
  @dir = dir
 end

 def navigate(command)
  if(command == "move")
    if(@dir == "north")
      @y += 1
    elsif(@dir == "south")
      @y -= 1
    elsif(@dir == "east")
      @x += 1
    elsif(@dir == "west")
      @x -= 1
    end

  elsif (command == "left")
    if(@dir == "north")
      @dir = "west"
    elsif(@dir == "south")
      @dir = "east"
    elsif(@dir == "east")
      @dir = "north"
    elsif(@dir == "west")
      @dir = "south"
    end

  elsif(command == "right")
    
    if(@dir == "north")
      @dir = "east"
    elsif(@dir == "south")
      @dir = "west"
    elsif(@dir == "east")
      @dir = "south"
    elsif(@dir == "west")
      @dir = "north"
    end

  end 
  return self
 end

 def ==(other)
  ((@x == other.x) && (@y == other.y) && (@dir == other.dir))
 end
  
 def print
  puts "#{@x} #{@y} #{@dir}"
 end

end 