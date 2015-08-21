require 'score_converter'
class DMark < ScoreConverter
  def matches?
    @score.between?(60, 69)
  end
  def execute
    'D'
  end
end
