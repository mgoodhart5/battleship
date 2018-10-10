class Space
  attr_reader :blank

  def initialize(blank = " ")
    @blank = blank
  end

  def hit
    if @blank == @ship
      @blank = "H"
    else
      "M"#somehow says invalid entry, try again
    end
  end

  def miss
    if @blank == blank
      @blank = "M"
    else
      #somehow says invalid entry, try again
    end
  end

end


#way to load ship into space
#ship class
