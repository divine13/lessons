class AcceptsData

  # Behavior defined in a method
  def add_five(number)
    puts number + 5
  end

end

class ProvidesData

  # Data defined in a method
  def two(&block)
    block.call(2)
  end

end

# Data passed to the method in an argument
AcceptsData.new.add_five(2)

block = Proc.new{|number| puts number + 5}

# Behavior passed to the method in a block argument
ProvidesData.new.two(&block)
