#Parser accepts input from application and dispatches the control to respective function
class Parser

  def parsing(input, input1)
    x, y, dir = input.split
    xcord = x.to_f
    ycord = y.to_f
    robot1 = Robot.new(xcord, ycord, dir)

    operations = input1.split
    no = 0
    while(no <  operations.size)
     robot1.navigate(operations[no])
     no = no + 1
    end
    return robot1
  end

end