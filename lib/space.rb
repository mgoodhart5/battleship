require './lib/ship'

class Space
  attr_reader :status, :coordinate, :has_ship

  def initialize(coordinate)
    @status = " "
    @coordinate = coordinate
    @has_ship = false
  end

  def not_fired_upon
    @status == " "
  end

  def fire_upon
    #if theres a ship in the space, it needs to be H
    # if theres no ship, it need to be M
    if @has_ship == true
      @status = "H"
    else
      @status = "M"
    end

  end




end
