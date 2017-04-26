# /^[A-z]+$/

require '../robot'

describe Robot do
  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      expect(r1.name).to exist
    end
  end
end
