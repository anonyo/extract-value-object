require 'score_converter'
class NoScore < ScoreConverter
  def matches?
    true
  end
  def execute
  end
end
