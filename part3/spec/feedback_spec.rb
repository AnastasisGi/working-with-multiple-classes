require './lib/feedback.rb'
require 'date'

puts "---Feedback---"

it 'returns the happiness score' do
  feedback = Feedback.new(10, Date.today)

  assert_equals(feedback.happiness, 10)
end
