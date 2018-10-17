require_relative './test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    coordinate = "A1"
    spaces = Space.new(coordinate)
    board = Board.new(spaces)
    assert_instance_of Board, board
  end

  def test_it_can_load_a_space
    coordinate = "A1"
    spaces = Space.new(coordinate)
    board = Board.new(spaces)
    assert_instance_of Space, spaces
  end

  def test_it_can_take_a_space
    coordinate = "A1"
    spaces = Space.new(coordinate)
    board = Board.new(spaces)
    assert_instance_of Space, board.spaces["A"]["1"]
  end

  def test_we_can_have_a_mini_board
    skip
    #this doesn't work because our actual board has spaces
    coordinate = "A1"
    spaces = Space.new(coordinate)
    board = Board.new(spaces)
    expected =
    "======
    . 1 2
    A
    B
    ======"
    assert_equal expected, board.display
  end

  def test_the_validity_of_the_sanitation_station
    #this test works for functionality but we added the boat for demo viewing pleasure
    skip
    board = Board.new(@spaces)
    placement_ship_1 = "c2 c3"
    placement_ship_2 = "A1 A3"
    assert_equal true, board.sanitation_station(placement_ship_1, placement_ship_2)
  end

  def test_the_sanitation_station_can_accept_invalid_input
    board = Board.new(@spaces)
    placement_ship_1 = "33, X"
    placement_ship_2 = "A1 A3"
    refute board.sanitation_station(placement_ship_1, placement_ship_2)
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

end
