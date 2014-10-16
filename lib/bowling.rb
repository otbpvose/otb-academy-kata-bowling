class BowlingLineScorer
  def score(line)
    total_score = 0
    frame_score = 0
    strike_incrementor = 0
    line.each do |frame|
      if frame_score == 10
        spare = true
      end
      if last_throw_score == 10
        strike = true
      end
      frame_score = 0
      last_throw_score = 0
      frame.each do |throw|
        frame_score += throw
        total_score += throw
        last_throw_score = throw
        if spare == true
          total_score += throw
          spare = false
        end
        if strike == true
          total_score += throw
          strike_incrementor += 1
          if strike_incrementor == 2
            strike = false
          end
        end
      end
    end
    total_score
  end
end
