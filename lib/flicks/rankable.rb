module Rankable
  def thumbs_up
    self.rank += 1
  end

  def thumbs_down
    self.rank -= 1
  end

  def normalized_rank
    self.rank / 10
  end

  def hit
    self.rank >= 10
  end

  def status
    hit ? "Hit" : "Flop"
  end

  def <=>(other_movie)
    other_movie.rank <=> self.rank
  end
end
