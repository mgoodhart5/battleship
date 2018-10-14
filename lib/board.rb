require './lib/space'
require './lib/ship'
require 'pry'

class Board
  attr_accessor :spaces

  def initialize
    @spaces = {
      "A" => {"1" => Space.new, "2" => Space.new},
      "B" => { "1" => Space.new, "2" => Space.new}
    }

    #lets make this an array
  end

#   def display
#     "===========
# . 1 2 3 4
# A
# B
# C
# D
# ==========="
#   end

  def space_printer
    @spaces[]
  end
  def display
    "======
    . 1 2
    A #{spaces["A"]["1"]}, #{spaces["A"]["2"]}
    B #{spaces["B"]["2"]}, #{spaces["B"]["2"]}
    ======"
  end



  def validation_station(coordinates, ship_size)
    # whether or not the thing is on the board
    # return true/false
    #
    # know about ship size
  end

  def check_both(coordinates)
    #coordinates.all? do |coordinate|
      #are in list of valid coordinates
      #on_board?(coordinate)
      #
  end

  def on_board?(coordinate)
    #will check if on list of valid coordinates
    #if coordinate is in array of valid coordinates, array.include?
  end

  end
# method that checks if the first and last coordinate are equal to ship's size
# coordinates must correspond to the first and last units of the ship
# method that checks if ship is not wrapping around board

#ship cannot wrap around the board
#ship cannot be on top of another ship
# ship cannot be placed diagonally
end
