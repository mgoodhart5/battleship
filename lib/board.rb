require './lib/space'

class Board
  attr_accessor :grid

# work in progress
  def initialize(square = Space.new)
    @grid = []
    @grid << square
    # hash....? who builds the board
    # binding.pry
  end

end
