class HighScores
  def initialize(initialized_scores)
    @initialized_scores = initialized_scores
  end

  def scores
    @initialized_scores
  end

  def latest
    @initialized_scores.last
  end

  def personal_best
    @initialized_scores.sort.pop
  end

  def personal_top_three
    @initialized_scores.sort {|a,b| b <=> a}.take(3)
  end
end