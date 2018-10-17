require './test/test_helper'
require './lib/space'
require './lib/ship'

class SpaceTest < Minitest::Test

  def test_it_exists
    space = Space.new("A1")
    assert_instance_of Space, space
  end

  def test_it_is_default_blank_when_initialized
    space = Space.new("A1")
    assert_equal true, space.not_fired_upon
  end

  def test_it_is_initialized_with_a_coordinate
    space = Space.new("A1")
    assert_equal "A1", space.coordinate
  end

  def test_that_it_can_be_fired_upon_with_no_ship
    space = Space.new("A1")
    space.fire_upon
    assert_equal "M", space.status
  end

end
