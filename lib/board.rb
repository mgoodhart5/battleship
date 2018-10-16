require './lib/space'
require './lib/ship'
require 'pry'

class Board
  attr_accessor :spaces

  def initialize(spaces)
    @spaces = {
      "A" => {"1" => Space.new("A1"), "2" => Space.new("A2")},
      "B" => { "1" => Space.new("B1"), "2" => Space.new("B2")}
    }
    # binding.pry
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

  def validation_station(little_ship_coords, big_ship_coords)
    binding.pry
    overlap_station(little_ship_coords, big_ship_coords) == true
  end


  def sanitation_station(placement_ship_1, placement_ship_2)
    little_ship_coords = placement_ship_1.upcase
    big_ship_coords = placement_ship_2.upcase
    little_ship_validation(little_ship_coords)
    big_ship_validation(big_ship_coords)
    if little_ship_validation(little_ship_coords) && big_ship_validation(big_ship_coords)
      overlap_station(little_ship_coords, big_ship_coords)
    else
      puts "invalid entry"
    end

  end


  def little_ship_validation(little_ship_coords)
    # binding.pry
    valid_little_ship = ["A1 A2", "A2 A3", "A3 A4", "B1 B2", "B2 B3", "B3 B4",
      "C1 C2", "C2 C3", "C3 C4", "D1 D2", "D2 D3", "D3 D4",
      "A1 B1", "B1 C1", "C1 D1", "A2 B2", "B2 C2", "C2 D2",
      "A3 B3", "B3 C3", "C3 D3", "A4 B4", "B4 C4", "C4 D4"]
      valid_little_ship.include?(little_ship_coords)
  end

  def big_ship_validation(big_ship_coords)
    valid_big_ship = ["A1 A3", "A2 A4", "B1 B3", "B2 B4",
      "C1 C3", "C2 C4", "D1 D3", "D2 D4",
      "A1 C1", "B1 D1", "A2 C2", "B2 D2",
      "A3 C3", "B3 D3", "A4 C4", "B4 D4"]
      valid_big_ship.include?(big_ship_coords)
  end

  def overlap_station(little_ship_coords, big_ship_coords)
    ship_array = little_ship_coords.split + big_ship_coords.split
    final_ship_array = ship_array.uniq
    if ship_array.length == final_ship_array.length
      puts "Place ships"
    else
      puts "WRONG"
    end
  end



# method that checks if the first and last coordinate are equal to ship's size
# coordinates must correspond to the first and last units of the ship
# method that checks if ship is not wrapping around board

#ship cannot wrap around the board
#ship cannot be on top of another ship
# ship cannot be placed diagonally
end
