class Game
  attr_reader :player_board, :computer_board

  def initialize(player_board, computer_board)
    @player_board = player_board
    @computer_board = computer_board
  end

end

# The idea is that we would have separate boards for the player
# and the computer
