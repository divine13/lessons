require './rectangle.rb'

class Square < Rectangle
	def initialize(x)
		super(x, x)		
	end
end
