class Score
  attr_reader :score
  def initialize(score)
    @score = score
  end

  def rating
    fail = FailingMark.new(score)

    scores_list = [ fail ]
    find_score = scores_list.find { |score| score.matches? }
    find_score.execute

 #  if fail.matches?
 #    fail.execute
 #  elsif @score < 70
 #    'D'
 #  elsif @score < 80
 #    'C'
 #  elsif @score < 90
 #    'B'
 #  else
 #    'A'
 #  end
  end
end
