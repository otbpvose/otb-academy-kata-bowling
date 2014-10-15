class BowlingLineScorer
  def score(line)
    total_score = 0
    line.each do |throw|
      throw.each do |score|
        total_score += score
      end
    end
    total_score
  end
end
