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

class Cow < Speaker
  include Yeller
  include Questioner
  include Exclaimer
end

Person.new.say("wtf") # WTF!?
Cow.new.say("moo")    # MOO?!
