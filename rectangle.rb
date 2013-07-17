class Rectangle

  def initialize(x, y)
    @length = x.to_i
    @height = y.to_i
  end

  def to_s
    "\n" +
    " " + "---" * @length + "\n" +
    ("|" + "   " * @length + "|" + "\n") * @height +
    " " + "---" * @length + "\n"
  end

  def height
    return @height
  end

  def length
    return @length
  end

  def area
    return @height * @length
  end

  def area_in_sq_meters
    if area == 1
      return "#{area} square meter"
    else
       return "#{area} square meters"
    end
  end

end
