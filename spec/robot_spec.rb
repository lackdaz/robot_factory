# /^[A-z]+$/
# Manage robot factory settings

# When robots come off the factory floor, they have no name
# The firs ttime you boot them up, a random name is generated in the format of two uppercase letters followed by three digits, such as RX837 or BC811.

# Every 

require_relative '../robot'

describe Robot do
  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      expect(r1.name).to exist
    end
  end
end
