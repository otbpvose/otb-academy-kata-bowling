class BowlingLineScorer
  def score(line)
    total_score = 0
    spare = false
    strike = false

    line.each do |frame|
      if spare
        total_score += frame.first
        spare = false
      end
      num_of_throws = frame.length
      frame_score = frame.reduce(:+)
      total_score += frame_score

      spare = spare_check(frame_score, num_of_throws)
    end

    return total_score
  end

  def spare_check(frame_score, num_of_throws)
    if frame_score == 10 && num_of_throws > 1
      return true
    else
      return false
    end
  end
end
