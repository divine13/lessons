require './rectangle.rb'

class LongRec < Rectangle
  def initialize(x)
    super(3 * x, x)
  end
end