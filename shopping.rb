class Shopping

  def initialize
    @eggs = 0
    @money = 5.0
  end

  def to_s
    "() " * @eggs
  end

  def eggs
    return @eggs
  end

  def money
    return @money
  end

  def buy_eggs
    while @eggs < 10 && @money >= 0.75
      @eggs = @eggs + 1
      @money = @money - 0.75
    end
    return self
  end

  def visit_atm
    @money = @money + 5.0
  end

end