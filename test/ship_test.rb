require_relative './test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_that_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

  def test_that_it_has_size
    ship = Ship.new
    assert_equal 1, ship.size
  end

end
