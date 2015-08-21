require 'score_converter'
class AMark < ScoreConverter
  def matches?
    score.between?(90, 100)
  end
  def execute
    'A'
  end
end
