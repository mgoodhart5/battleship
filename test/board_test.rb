require_relative './test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    board_size = Space.new
    board = Board.new(board_size)
    assert_instance_of Board, board
  end

  # def test_it_has_a_space_holder
  #   board = Board.new
  #   assert_equal {}, board.spaces
  # end


  def test_it_can_load_a_space
    board_size = Space.new
    board = Board.new(board_size)
    assert_instance_of Space, board_size
  end

  # def test_state_of_space_can_be_altered
  #   space = Space.new
  #   board = Board.new(space)
  #   # binding.pry
  #   assert_equal "H", space.hit
  #
  #   assert_equal "M", space.miss
  #   #expected "M" actual "nil"
  # end

  def 
  end






  def test_it_can_take_a_space
    board = Board.new
    # binding.pry
    assert_instance_of Space, board.spaces["A"]["1"]
  end

#   def test_we_can_see_a_board
#     board = Board.new
#     expected = "===========
# . 1 2 3 4
# A
# B
# C
# D
# ==========="
#     assert_equal expected, board.display
#   end
  def test_we_can_have_a_mini_board
    board = Board.new
    expected =
    "======
    . 1 2
    A
    B
    ======"
    binding.pry
    assert_equal expected, board.display
  end

  # def test_we_can_put_one_space_in_the_board
  #   skip
  #
  #   board = Board.new
  #   binding.pry
  #   assert_equal 4,
  # end
end
