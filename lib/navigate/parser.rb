#Parser accepts input from application and dispatches the control to respective function
class Parser

  def parsing(inputc, input, input1)
    
    xgrid, ygrid = inputc.split
    rectangle1 = Rectangle.new(xgrid, ygrid)

    x, y, dir = input.split
    xcord = x.to_f
    ycord = y.to_f
    robot1 = Robot.new(xcord, ycord, dir)

    operations = input1.split
    
    size = 0
  
    while(size <  operations.size)
     robot1.navigate(operations[size])
     size = size + 1
    end

    return robot1
  
  end

end