require './lib/answer.rb'

describe 'Answer' do
  describe '#correct?' do
    it 'is false when answer is incorrect' do
      answer = Answer.new(5, 3)

      expect(answer.correct?).to eq false
    end

    it 'is true if the answer given equals the correct answer' do
      answer = Answer.new(5, 5)
      
      expect(answer.correct?).to eq true
    end
  end
end
