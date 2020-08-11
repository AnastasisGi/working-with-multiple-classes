require 'colorize'

COLOURS = {
  true => :green,
  false => :red
}

def assert_equals(val1, val2)
 val1 == val2
end

def it(description, &block)
  assertion_result = block.call

  puts description.send(COLOURS[assertion_result])
end
