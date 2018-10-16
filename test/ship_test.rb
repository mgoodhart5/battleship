require_relative './test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_that_it_exists
    ship = Ship.new("A1 A2")
    assert_instance_of Ship, ship
  end

  def test_it_can_be_initialized_with_coordinates
    ship = Ship.new("A1 A2")
    assert_equal "A1 A2", ship.location
  end



end
