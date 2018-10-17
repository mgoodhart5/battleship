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
    if @has_ship == true
      @status = "H"
    else
      @status = "M"
    end
  end

end
