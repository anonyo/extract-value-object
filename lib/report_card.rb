class ReportCard
  attr_accessor :grades

  def initialize(attributes = {})
    @scores = attributes[:scores]
    @grades ||= grade_scores
  end

  private

  def grade_scores
    @scores.map do |score|
      fetch(score).rating
    end
  end

  def fetch(score)
    @score ||= Score.new(score)
  end
end
