require './lib/student.rb'
require './lib/test.rb'
require './lib/feedback.rb'

puts "---Student---"

it 'returns the student first name and last name' do
  student = Student.new(first_name: "Sian", last_name: "McAvoy")

  assert_equals(student.full_name, "Sian McAvoy")
end

it 'defaults to "Joe Bloggs"' do
  student = Student.new

  assert_equals(student.full_name, "Joe Bloggs")
end

it 'returns the average happiness reported' do
  feedback_1 = Feedback.new(4, Date.today)
  feedback_2 = Feedback.new(4, Date.today)
  student = Student.new(feedbacks: [feedback_1, feedback_2])

  assert_equals(student.happiness, 4)
end

it 'defaults to zero' do
  student = Student.new

  assert_equals(student.happiness, 0)
end

it 'returns all test scores' do
  test_1 = Test.new(Date.today, [Answer.new(5, 5)])
  test_2 = Test.new(Date.today, [Answer.new(6, 6)])
  student = Student.new(tests: [test_1, test_2])

  assert_equals(student.test_scores, { "#{ Date.today.to_s }" => [1, 1] })
end

it 'defaults to being empty' do
  student = Student.new

  assert_equals(student.test_scores, {})
end
