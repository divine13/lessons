class People
  include Enumerable

  def each
    yield "Maja"
    yield "Nina"
    yield "Erik"
  end

end

people = People.new
people.count            #=> 3
people.first            #=> "Maja"
people.max              #=> "Nina"
people.min              #=> "Erik"
people.to_a             #=> ["Maja", "Nina", "Erik"]
people.sort             #=> ["Erik", "Maja", "Nina"]
people.include?("Erik") #=> true
people.include?("Bob")  #=> false
