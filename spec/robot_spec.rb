
require '../app/robot'
require '../app/cartesian_plane'

describe Robot, "#direction" do
  it "check direction left 0" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.direction.should eq(0)
  end
end

describe Robot, "#direction" do
  it "check direction left 90" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left

    robot.direction.should eq(90)
  end
end

describe Robot, "#direction" do
  it "check direction left 180" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.left

    robot.direction.should eq(180)
  end
end

describe Robot, "#direction" do
  it "check direction left 270" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.left
    robot.left

    robot.direction.should eq(270)
  end
end

describe Robot, "#direction" do
  it "check direction left 4 times eq to 0" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.left
    robot.left
    robot.left

    robot.direction.should eq(0)
  end
end

describe Robot, "#direction" do
  it "check direction left 5.times eq to 90" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.left
    robot.left
    robot.left
    robot.left

    robot.direction.should eq(90)
  end
end

describe Robot, "#direction" do
  it "check direction right 1.times eq to 270" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right

    robot.direction.should eq(270)
  end
end

describe Robot, "#direction" do
  it "check direction right 2.times eq to 180" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.right

    robot.direction.should eq(180)
  end
end

describe Robot, "#direction" do
  it "check direction right 3.times eq to 90" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.right 
    robot.right

    robot.direction.should eq(90)
  end
end

describe Robot, "#direction" do
  it "check direction right 4.times eq to 0" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.right
    robot.right
    robot.right

    robot.direction.should eq(0)
  end
end

describe Robot, "#direction" do
  it "check direction right 5.times eq to 270" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.right
    robot.right
    robot.right
    robot.right

    robot.direction.should eq(270)
  end
end

describe Robot, "#move" do
  it "check move Front" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.move

    robot.position_y.should eq(1)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#move" do
  it "check move Left" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.move

    robot.position_y.should eq(0)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#move" do
  it "check move Right" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.move

    robot.position_y.should eq(0)
    robot.position_x.should eq(1)
    
  end
end

describe Robot, "#move" do
  it "check move Rear" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    robot.right
    robot.move

    robot.position_y.should eq(0)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#move" do
  it "check move Rear 2" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.left
    robot.left
    robot.move

    robot.position_y.should eq(0)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#move" do
  it "check move to max Y" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    8.times do
    	robot.move	
    end
    robot.position_y.should eq(8)
    robot.position_x.should eq(0)


    robot.move
    robot.position_y.should eq(9)
    robot.position_x.should eq(0)

    robot.move
    robot.position_y.should eq(9)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#move" do
  it "check move to max Y" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.right
    8.times do
    	robot.move	
    end
    robot.position_y.should eq(0)
    robot.position_x.should eq(8)


    robot.move
    robot.position_y.should eq(0)
    robot.position_x.should eq(9)

    robot.move
    robot.position_y.should eq(0)
    robot.position_x.should eq(9)
    
  end
end

describe Robot, "#move" do
  it "check move to max Y X" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    8.times do
    	robot.move	
    end

    robot.right
    8.times do
    	robot.move	
    end

    robot.position_y.should eq(8)
    robot.position_x.should eq(8)


    robot.move
    robot.position_y.should eq(8)
    robot.position_x.should eq(9)

    robot.left
    robot.move
    robot.position_y.should eq(9)
    robot.position_x.should eq(9)

	robot.move
	robot.position_y.should eq(9)
    robot.position_x.should eq(9)

    robot.right
	robot.move
	robot.position_y.should eq(9)
    robot.position_x.should eq(9)
    
  end
end

describe Robot, "#move" do
  it "check move MRMMLMMM" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.move
    robot.right
    robot.move
    robot.move
    robot.left
    robot.move
    robot.move
    robot.move

    robot.position_y.should eq(4)
    robot.position_x.should eq(2)
    
  end
end

describe Robot, "#move" do
  it "check move MRMMMLMMMMMLMM" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.move
    robot.right
    robot.move
    robot.move
    robot.move
    robot.left
    robot.move
    robot.move
    robot.move
    robot.move
    robot.move
    robot.left
    robot.move
    robot.move

    robot.position_y.should eq(6)
    robot.position_x.should eq(1)
    
  end
end

describe Robot, "#tele" do
  it "check tele 0,0" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.tele 0,0

    robot.position_y.should eq(0)
    robot.position_x.should eq(0)
    
  end
end

describe Robot, "#tele" do
  it "check tele 3,7" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.tele 3,7

	robot.position_x.should eq(3)
    robot.position_y.should eq(7)
    
  end
end

describe Robot, "#tele" do
  it "check tele 8,5" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.tele 8,5

	robot.position_x.should eq(8)
    robot.position_y.should eq(5)
    
    
  end
end

describe Robot, "#tele" do
  it "check tele 8,5" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.tele 8,5

	robot.position_x.should eq(8)
    robot.position_y.should eq(5)
    
    
  end
end

describe Robot, "#tele" do
  it "check tele 8,5" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    robot.tele 10,10

	robot.position_x.should eq(0)
    robot.position_y.should eq(0)
    
    
  end
end

describe Robot, "#tele" do
  it "check tele 8,5" do
    plane = CartesianPlane.new
    robot = Robot.new plane
    
    3.times { robot.move }
    robot.right
    4.times { robot.move }

    robot.tele 15,15

	robot.position_x.should eq(4)
    robot.position_y.should eq(3)
    
    
  end
end
