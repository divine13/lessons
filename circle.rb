# create circle class with following methods defined: 
# initialize method
# radius
# area 
# circumference 

class Circle

  def initialize(r)
    @radius = r.to_i
    @PI = 3.14
  end

  def radius
    return @radius
  end

  def area
    return @PI * @radius ** 2
  end

  def circumfence
    return @PI * @radius * 2
  end

end