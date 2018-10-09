require_relative './test_helper'
require './lib/space'

class SpaceTest < Minitest::Test
  def test_it_exists
    space = Space.new
    assert_instance_of Space, space
  end

  def test_it_is_blank_when_initialized
    space = Space.new
    assert_equal true, space.blank
  end

  def test_that_blank_can_change_when_hit
  end





end
