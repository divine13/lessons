class Laundry

  def initialize
    @count = 0
    @dirty = true
  end

  def wash!
    @count += 1
    if @count >= 2
      @dirty = false
      @count = 0
    end
  end

  def dirty?
    @dirty
  end

end

laundry = Laundry.new

1.times do
  laundry.wash!
  puts "Washed the laundry"
  if laundry.dirty?
    puts "It's still dirty, so wash again!"
    redo
  end
end

puts "All clean!"
