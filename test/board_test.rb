require_relative './test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test
  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_has_a_space
    space = Space.new
    board = Board.new(@spaces)
    assert_
  end


end
