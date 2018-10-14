require './battleship'
require './lib/space'
require './lib/ship'
require 'pry'

class Board
  attr_accessor :spaces

  def initialize(spaces)
    @spaces = {
      "A" => {"1" => Space.new, "2" => Space.new},
      "B" => { "1" => Space.new, "2" => Space.new}
    }
    binding.pry
  end

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
    sani_coords = coordinates.upcase.split
    if sani_coords.count == ship_size
      check_both(sani_coords)
    else
      invalid_input
      #LoopLyfe
    end
    # binding.pry
    # bow = sani_coords.split[0]
    # stern = sani_coords.split[1]
    # whether or not the thing is on the board
    # return true/false
    #
    # know about ship size
  end

  def check_both(sani_coords)
    # binding.pry
    sani_coords.all? do |coord|
      on_board?(coord)
      # binding.pry
    end

  end

  def on_board?(coordinate)
    valid_coordinates = ["A1", "A2", "B1", "B2"]
    # binding.pry
    valid_coordinates.include?(coordinate)
    #rassoc
    #will check if on list of valid coordinates
    #if coordinate is in array of valid coordinates, array.include?
  end

  def horizontal_validation(coordinates)
    # if the ship is horizontal, then the coordinates
    # will all have the same keys
    # coordinates.all? do |coordy|
      #@spaces.keys.include?(coordy)

    # each horizontal line of spaces corresponds to a different key(letter)
    # see if there is a method to count number in hash

  end


# method that checks if the first and last coordinate are equal to ship's size
# coordinates must correspond to the first and last units of the ship
# method that checks if ship is not wrapping around board

#ship cannot wrap around the board
#ship cannot be on top of another ship
# ship cannot be placed diagonally
end
