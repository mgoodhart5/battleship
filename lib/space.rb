class Space
  attr_reader :blank

  def initialize(blank = " ")
    @blank = blank
  end

  def hit
    if @blank == "ship" || " "
      #^^^^This will end up being just an instance variable of ship
      @blank = "H"
    else
      #invalid entry, try again >>>GameClass?
    end
  end

  def miss
    if @blank == blank
      @blank = "M"
    else
      # invalid entry, try again >>>GameClass?
    end
  end

end

#way to load ship into space
#ship class
