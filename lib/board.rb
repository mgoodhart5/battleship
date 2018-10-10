require './lib/space'

class Board
  attr_accessor :grid

# work in progress
  def initialize(potato = Space.new)
    @grid = []
    @grid << potato
    # binding.pry
  end

end
