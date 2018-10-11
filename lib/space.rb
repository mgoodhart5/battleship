class Space
  attr_reader :blank

  def initialize(blank = " ")
    @blank = blank
  end

  def hit
    if @blank != " "
      # binding.pry
      @blank = "H"
    end
  end

  def miss
    if @blank = " "
      @blank = "M"
    end
  end

end

#way to load ship into space
#ship class
