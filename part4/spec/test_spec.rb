require './lib/test.rb'
require './lib/answer.rb'

describe 'Test' do
  describe '#pretty_date_taken' do
    it 'returns the date the test was taken, as a string' do
      answers = [
        Answer.new(5, 5),
        Answer.new(7, 7),
        Answer.new(1, 1)
      ]
      test = Test.new(Date.today, answers)

      expect(test.pretty_date_taken).to eq Date.today.to_s
    end
  end

  describe '#score' do
    it 'returns the number of correct answers when there are no incorrect' do
      answers = [
        Answer.new(5, 5),
        Answer.new(7, 7),
        Answer.new(1, 1)
      ]
      test = Test.new(Date.today, answers)

      expect(test.score).to eq 3
    end

    it 'returns the number of correct answers when there are some incorrect' do
      answers = [
        Answer.new(5, 5),
        Answer.new(7, 4),
        Answer.new(1, 1)
      ]
      test = Test.new(Date.today, answers)

      expect(test.score).to eq 2
    end
  end
end
