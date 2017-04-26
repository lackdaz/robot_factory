require 'pry'

class Robot
  attr_accessor :name
  def initialize
    reset
  end
  def name_randomizer
    name = ''
    2.times do
      name += ('a'..'z').to_a[rand(26)].to_s.upcase
    end
    3.times do
      name += rand(9).to_s
    end
    name
  end

  def reset
    p @name = name_randomizer
  end
  def test
    p @name = "AB100"
  end
end


class Robot_factory
  @@robot_names = []
  attr_accessor :robots

  def initialize
    @robots = []
  end
  def self.robot_names
    @@robot_names
  end
  def addRobot(robot)
    while @@robot_names.include?(robot.name) do
      puts 'There is already a robot with the same name, doing a reset'
      robot.reset
    end
    @@robot_names.push(robot.name)
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

# binding.pry
