require_relative './test_helper'
require './lib/space'
require './lib/ship'

class SpaceTest < Minitest::Test

  def test_it_exists
    space = Space.new
    assert_instance_of Space, space
  end

  def test_it_is_default_blank_when_initialized
    space = Space.new
    assert_equal " ", space.blank
  end

  def test_that_space_can_change_to_H
    ship = Ship.new
    space = Space.new(ship)
    binding.pry
    assert_equal "H", space.hit
    #we know that ship will ultimately be an instance variable
  end

  def test_that_blank_changes_to_M_when_missed
    space = Space.new
    assert_equal "M", space.miss
  end

end
