# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of
# two uppercase letters followed by three digits, such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings, which
# means that their name gets wiped. The next time you ask, it will respond with
# a new random name.

# The names must be random: they should not follow a predictable sequence.
# Random names means a risk of collisions. Your solution should not allow the
# use of the same name twice when avoidable. In some exercism language tracks
# there are tests to ensure that the same name is never used twice.

require_relative '../robot'

describe Robot do
  before(:context) do
    @robot = Robot.new
  end

  describe 'Initialization' do
    it 'should create new robot with name' do
      expect(@robot.name).to be_truthy
    end

    it 'Name should be in this format RX123 / [A-Z][A-Z][0-9][0-9][0-9]' do
      expect(@robot.name).to match(/[A-Z][A-Z][0-9][0-9][0-9]/)
    end

    it 'After Reset, name should have changed and still retain the right format RX123' do
      old_name = @robot.name
      @robot.reset
      expect(@robot.name).not_to eq old_name
      expect(@robot.name).to match(/[A-Z][A-Z][0-9][0-9][0-9]/)
    end
  end
end
