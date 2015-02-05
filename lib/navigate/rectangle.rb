#Takes right-end coordinates and makes rectangular lane
class Rectangle
 def initialize(x, y)
   @x1 = 0
   @y1 = 0
   @x2 = x
   @y2 = y
 end

 def left_coords
   [@x1, @y1]
 end

 def right_coords
   [@x2, @y2]
 end

end