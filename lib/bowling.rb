class BowlingLineScorer
  def score(line)
    total_score = 0

    line.each do |frame|
      num_of_throws = frame.length
      frame_score = frame.reduce(:+)

      total_score += frame_score
    end

    return total_score
  end
end
