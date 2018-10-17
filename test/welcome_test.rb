require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './battleship'
require './lib/board'
require './lib/game'
require './lib/ship'

class BattleshipTest < Minitest::Test

  def test_it_exists
    battleship = Battleship.new
    assert_instance_of Battleship, battleship
  end

  def test_game_set_has_instance_of_game
    battleship = Battleship.new
    assert_instance_of Game, battleship.game_setup
    assert_instance_of Board, battleship.game_setup.player_board
    assert_instance_of Board, battleship.game_setup.player_board
  end

  def test_first_ship_can_be_placed

  end

end
