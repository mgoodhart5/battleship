require './lib/space'

class Board
  attr_accessor :grid

# work in progress
  def initialize(square = Space.new)
    @grid = []
    @grid << square
    # binding.pry
  end

end
