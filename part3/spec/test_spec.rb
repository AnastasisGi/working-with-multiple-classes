require './lib/test.rb'
require './lib/answer.rb'

puts "---Test---"

it 'returns the date the test was taken, as a string' do
  answers = [
    Answer.new(5, 5),
    Answer.new(7, 7),
    Answer.new(1, 1)
  ]
  test = Test.new(Date.today, answers)

  assert_equals(test.pretty_date_taken, Date.today.to_s)
end

it 'returns the number of correct answers when there are no incorrect' do
  answers = [
    Answer.new(5, 5),
    Answer.new(7, 7),
    Answer.new(1, 1)
  ]
  test = Test.new(Date.today, answers)

  assert_equals(test.score, 3)
end

it 'returns the number of correct answers when there are some incorrect' do
  answers = [
    Answer.new(5, 5),
    Answer.new(7, 4),
    Answer.new(1, 1)
  ]
  test = Test.new(Date.today, answers)

  assert_equals(test.score, 2)
end
