require_relative './test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    skip
    spaces = Space.new
    board = Board.new(spaces)
    assert_instance_of Board, board
  end

  # def test_it_has_a_space_holder
  #   board = Board.new
  #   assert_equal {}, board.spaces
  # end

  def test_it_can_load_a_space
    skip
    spaces = Space.new
    board = Board.new(spaces)
    assert_instance_of Space, spaces
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

  def test_it_can_take_a_space
    skip
    spaces = Space.new
    board = Board.new(spaces)
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
    skip
    spaces = Space.new
    board = Board.new(spaces)
    expected =
    "======
    . 1 2
    A
    B
    ======"
    # binding.pry
    assert_equal expected, board.display
  end

  def test_the_validity_of_the_validation_station
    skip
    board = Board.new(@spaces)
    user_input = "c2 B2"
    assert_equal false, board.validation_station("c2 B2", 2)
  end

  def test_the_validation_station_can_accept_invalid_input
    skip
    board = Board.new(@spaces)
    user_input = "33, X"
    refute board.validation_station("33, X", 2)
  end

  def test_little_ship_validation
    skip
    board = Board.new(@spaces)
    user_input = "A2 B2"

    assert_equal true, board.little_ship_validation("A2 B2")
  end

  def test_big_ship_validation
    skip
    board = Board.new(@spaces)
    user_input = "A1 A3"
    assert_equal true, board.big_ship_validation("A1 A3")
  end

  def test_little_ship_and_big_ship_cannot_overlap
    # skip
    board = Board.new(@spaces)
    user_input_1 = "A2 B2"
    user_input_2 = "B2 B4"
    assert_equal true, board.little_ship_validation(user_input_1)
    assert_equal false, board.big_ship_validation(user_input_2, user_input_1)

  end



  # def test_we_can_put_one_space_in_the_board
  #   skip
  #
  #   board = Board.new
  #   binding.pry
  #   assert_equal 4,
  # end
end
