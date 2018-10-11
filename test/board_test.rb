require_relative './test_helper'
require 'pry'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

# keep this one for now, refactor it later
  # def test_it_can_contain_spaces
  #   board = Board.new
  #   assert_equal ([]), board.grid
  # end

  def test_it_can_load_a_space
    space = Space.new
    board = Board.new(space)
    assert_equal 1, board.grid.count
  end

  def test_state_of_space_can_be_altered
    space = Space.new
    board = Board.new(space)
    # binding.pry
    assert_equal "H", space.hit

    assert_equal "M", space.miss
    #expected "M" actual "nil"
  end

end
