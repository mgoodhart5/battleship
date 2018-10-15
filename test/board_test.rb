require_relative './test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    spaces = Space.new
    board = Board.new(spaces)
    assert_instance_of Board, board
  end

  # def test_it_has_a_space_holder
  #   board = Board.new
  #   assert_equal {}, board.spaces
  # end

  def test_it_can_load_a_space
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

  def test_the_validity_of_the_sanitation_station
    board = Board.new(@spaces)
    user_input = "c2 B2"
    assert_equal false, board.sanitation_station("c2 B2", 2)
  end

  def test_the_sanitation_station_can_accept_invalid_input
    board = Board.new(@spaces)
    user_input = "33, X"
    refute board.sanitation_station("33, X", 2)
  end

  def test_little_ship_validation
    board = Board.new(@spaces)
    user_input = "A2 B2"

    assert_equal true, board.little_ship_validation("A2 B2")
  end

  def test_big_ship_validation
    board = Board.new(@spaces)
    user_input = "A1 A3"
    assert_equal true, board.big_ship_validation("A1 A3")
  end

  def test_little_ship_and_big_ship_cannot_overlap
    board = Board.new(@spaces)
    user_input_1 = "A2 B2"
    user_input_2 = "B2 B4"
    assert_equal false, board.overlap_station(user_input_1, user_input_2)
  end

  def test_the_validity_of_the_validation_station
    board = Board.new(@spaces)
    user_input_1 = "A1 A2"
    user_input_2 = "B2 B4"
    assert_equal true, board.validation_station(user_input_1, user_input_2)
    refute board.validation_station("A3 B4", "A1 A3")
  end



  # def test_we_can_put_one_space_in_the_board
  #   skip
  #
  #   board = Board.new
  #   binding.pry
  #   assert_equal 4,
  # end
end
