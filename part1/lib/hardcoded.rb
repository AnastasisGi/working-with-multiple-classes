# Option 1
class Smiley
  def get
    ":D"
  end
end

class Greeter
  def greet
    smiley = Smiley.new
    "Hello #{smiley.get}"
  end
end

greeter = Greeter.new
p greeter.greet
