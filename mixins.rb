class Speaker
  def say(msg)
    msg
  end
end

module Yeller
  def say(msg)
    super.upcase
  end
end

module Exclaimer
  def say(msg)
    super + "!"
  end
end

module Questioner
  def say(msg)
    super + "?"
  end
end

class Person < Speaker
  include Yeller
  include Exclaimer
  include Questioner
end

Person.new.say("wtf")
