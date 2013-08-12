class Forbidden < StandardError
  def message
    "You did something that was not allowed!"
  end
end

class AlreadyTweeted < Forbidden
  def message
    "You tried to tweet the same text twice!"
  end
end

def tweet(text)
  raise AlreadyTweeted.new if @text == text
  @text = text
  puts "You tweeted: #{@text}"
end

tries = 0

begin
  tries = tries + 1
  tweet("hello nina and maja!")
  tweet("hello nina and maja!")
rescue AlreadyTweeted => e
  puts "Rescued an error of type #{e.class} with the message: #{e.message}"
  tries
  retry if tries < 3
end

tweet("goodbye nina and maja!")
