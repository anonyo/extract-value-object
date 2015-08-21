require 'score_converter'
class FailingMark < ScoreConverter
  def matches?
    @score.between?(0, 59)
  end
  def execute
    'F'
  end
end
