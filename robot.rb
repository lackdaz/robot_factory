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
    p @name = num1 + num2 + num3 + num4 + num5
  end
end

binding.pry
