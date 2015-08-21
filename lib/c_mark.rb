require 'score_converter'
class CMark < ScoreConverter
  def matches?
    score.between?(70, 79)
  end
  def execute
    'C'
  end
end
