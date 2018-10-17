class Ship
  attr_reader :size, :location

  def initialize(location)
    @size = size
    @location = location
  end

end

# The ship would be aware of its size and location.  It would
# therefore know when it had been sunk.
