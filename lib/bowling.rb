class BowlingLineScorer
  def score(line)
    line.each do |frame|
      num_of_throws = frame.length
      puts frame.reduce(:+)
    end
  end
end
