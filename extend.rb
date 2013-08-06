# coding: utf-8

class Person

  def money
    500
  end

end

module European

  def money
    "#{super}€"
  end

end

module American

  def money
    "$#{super}"
  end

end

p1 = Person.new
p2 = Person.new

p1.extend(European)
p2.extend(American)

p1.money #=> 500€
p2.money #=> $500
