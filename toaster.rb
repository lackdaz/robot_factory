require_relative 'robot'
require 'pry'

class Toaster < Robot
  def initialize(brand)
    super() # super will call the parent's initialized method
    @brand = brand
  end
end

binding.pry
