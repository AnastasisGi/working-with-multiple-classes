require './lib/feedback.rb'
require 'date'

describe 'Feedback' do
  describe '#happiness' do
    it 'returns the happiness score' do
      feedback = Feedback.new(10, Date.today)
      expect(feedback.happiness).to eq 10
    end
  end
end
