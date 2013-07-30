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

people.collect{|name| name + "is awesome!"} #=> ["Maja is awesome!", "Nina is awesome!", "Erik is awesome!"]
people.select{|name| name.end_with?("a")}   #=> ["Maja", "Nina"]
people.reject{|name| name.start_with?("E")} #=> ["Maja", "Nina"]
