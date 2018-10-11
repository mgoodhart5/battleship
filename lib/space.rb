require './lib/ship'

class Space
  attr_reader :blank

  def initialize
    @blank = true
  end

  def miss
    if @blank == true
      @blank = "M"
    end
  end

  def hit
    @blank = "H"
    # we know that this has to be dependent
    # on whether a ship is present or not
  end

end

#way to load ship into space
#ship class
