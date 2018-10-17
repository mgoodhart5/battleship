require_relative './test_helper'
require './lib/game'
require './lib/board'

class GameTest < Minitest::Test

  def test_it_exists
    player_board = Board.new(@spaces)
    computer_board = Board.new(@spaces)
    game = Game.new(player_board, computer_board)
    assert_instance_of Game, game
  end

end
