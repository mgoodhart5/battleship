class Space
  attr_reader :blank

  def initialize(blank = " ")
    @blank = blank
  end

  def hit
    @blank = "H"
  end

  def miss
    @blank = "M"
  end

end
