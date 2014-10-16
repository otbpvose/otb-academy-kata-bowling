class BowlingLineScorer
  def score(line)
    total_score = 0
    spares = []
    strikes = []

    line.each_with_index do |frame, i|
      num_of_throws = frame.length
      frame_score = frame.reduce(:+)

      if frame_score == 10 && num_of_throws > 1
        spares << i
      end

      if frame.first == 10
        strikes << i
      end

      total_score += frame_score
    end

    total_score += spare_checker(line, spares)
    total_score += strike_checker(line, strikes)

    return total_score
  end

  def spare_checker(line, spares)
    score = 0

    spares.each do |frame|
      score += line[frame + 1].first
    end

    return score
  end

  def strike_checker(line, strikes)
    score = 0

    strikes.each do |frame|
      if line[frame + 1].length == 1
        score += line[frame + 1].first
        score += line[frame + 2].first
      else
        score += line[frame + 1].reduce(:+)
      end
    end

    return score
  end
end
