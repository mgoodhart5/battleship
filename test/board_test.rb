require_relative './test_helper'
require 'pry'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  # def test_it_has_a_space_holder
  #   board = Board.new
  #   assert_equal {}, board.spaces
  # end

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
