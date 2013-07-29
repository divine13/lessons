# Behavior defined in a method
def add_five(number)
  puts number + 5
end

# Data passed to the method in an argument
add_five(2)

# Data defined in a method
def two(&block)
  block.call(2)
end

# Behavior passed to the method in a block argument
two{|number| puts number + 5}
