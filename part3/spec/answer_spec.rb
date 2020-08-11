require './lib/answer.rb'

puts "---Answer---"

it 'is true if the answer given equals the correct answer' do
  answer = Answer.new(5, 5)

  assert_equals(answer.correct?, true)
end

it 'is false otherwise' do
  wrong_answer = Answer.new(5, 3)

  assert_equals(wrong_answer.correct?, false)
end
