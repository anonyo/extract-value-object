class Score
  attr_reader :score
  def initialize(score)
    @score = score
  end

  def scores_list
    failing_mark = FailingMark.new(score)
    d_mark = DMark.new(score)
    c_mark = CMark.new(score)
    b_mark = BMark.new(score)
    a_mark = AMark.new(score)
    no_score = NoScore.new(score)

    [ failing_mark, d_mark, c_mark, b_mark, a_mark, no_score ]
  end

  def find_score
    scores_list.find { |score| score.matches? }
  end

  def rating
    find_score.execute
  end
end
