class Greeter
  def initialize(emoji)
    @emoji = emoji
  end

  def greet
    "Hello #{@emoji.get}"
  end
end

class SadSmiley
  def get
    ":("
  end
end

class Smiley
  def get
    ":D"
  end
end

smiley = Smiley.new
sad_smiley = SadSmiley.new
smiley_greeter = Greeter.new(smiley)
sad_smiley_greeter = Greeter.new(sad_smiley)

p smiley_greeter.greet
p sad_smiley_greeter.greet
