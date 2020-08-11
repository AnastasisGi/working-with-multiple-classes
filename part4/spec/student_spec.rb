require './lib/student.rb'
require './lib/test.rb'
require './lib/feedback.rb'

describe 'Student' do
  describe '#full_name' do
    it 'returns the student first name and last name' do
      student = Student.new(first_name: "Sian", last_name: "McAvoy")

      expect(student.full_name).to eq "Sian McAvoy"
    end

    it 'defaults to "Joe Bloggs"' do
      student = Student.new
      expect(student.full_name).to eq "Joe Bloggs"
    end
  end

  describe '#happiness' do
    it 'returns the average happiness reported' do
      feedback_1 = Feedback.new(4, Date.today)
      feedback_2 = Feedback.new(4, Date.today)
      student = Student.new(feedbacks: [feedback_1, feedback_2])

      expect(student.happiness).to eq 4
    end

    it 'defaults to zero' do
      student = Student.new

      expect(student.happiness).to eq 0
    end
  end

  describe '#test_scores' do
    it 'returns all test scores' do
      test_1 = Test.new(Date.today, [Answer.new(5, 5)])
      test_2 = Test.new(Date.today, [Answer.new(6, 6)])
      student = Student.new(tests: [test_1, test_2])

      expect(student.test_scores).to eq({ "#{Date.today}" => [1, 1] })
    end

    it 'defaults to being empty' do
      student = Student.new

      expect(student.test_scores).to eq({})
    end
  end
end
