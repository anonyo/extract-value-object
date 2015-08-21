require 'score_converter'
class BMark < ScoreConverter
  def matches?
    score.between?(80, 89)
  end
  def execute
    matches? ? 'B' : false
  end
end
