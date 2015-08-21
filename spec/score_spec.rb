require 'spec_helper'

describe Score do
  describe '#grade' do
    it 'returns A for a score 90 or greater' do
      grade = Score.new(90)

      expect(grade.rating).to eq('A')
    end

    it 'returns B for a score 80 to 89 ' do
      grade_score = Score.new(89)

      expect(grade_score.rating).to eq('B')
    end
    it 'returns C for a score 70 to 79' do
      grade_score = Score.new(79)

      expect(grade_score.rating).to eq('C')
    end
    it 'returns D for a score of 60 to 69' do
      grade_score = Score.new(69)

      expect(grade_score.rating).to eq('D')
    end
    it 'returns F for a score of 59 or less' do
      grade_score = Score.new(59)

      expect(grade_score.rating).to eq('F')
    end
    it 'returns nothing when negative number is passed as score' do
      grade_score = Score.new(-4)

      expect(grade_score.rating).to eq nil
    end
    it 'returns nothing when number more than 100 is passed as score' do
      grade_score = Score.new(500)

      expect(grade_score.rating).to eq nil
    end

  end
end
