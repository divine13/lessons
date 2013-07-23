require './rectangle.rb'

class Square < Rectangle
  def initialize(x)
    super(x, x)	# call the method in parent class
  end
end

