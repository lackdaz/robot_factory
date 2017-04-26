require 'pry'

class Robot
  attr_accessor :name
  def initialize
    reset
  end
  def reset
    num1 = ('a'..'z').to_a[rand(26)].to_s.upcase
    num2 = ('a'..'z').to_a[rand(26)].to_s.upcase
    num3 = rand(9).to_s
    num4 = rand(9).to_s
    num5 = rand(9).to_s
    p Robot_factory.robot_names
    p @name = num1 + num2 + num3 + num4 + num5

  end
end


class Robot_factory
  @@robot_names = []
  attr_accessor :robots

  def initialize
    @robots = []
  end
  def robot_names
    p self.@@robot_names
  end
  def addRobot(robot)
    @robots.push(robot.name)
  end

  def print_name
    @robots
    # @robots.each do |robot|
    #   p robot.name
    # end
  end
end

factory = Robot_factory.new
robot1 = Robot.new
factory.addRobot(robot1)
robot2 = Robot.new
factory.addRobot(robot2)

binding.pry
