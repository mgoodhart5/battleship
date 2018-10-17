require 'pry'
require './lib/board'
require './lib/game'

class Welcome


  def welcome_page
    puts "Welcome to Battleship, Player One."
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    answer = gets.chomp
    if answer == "p"
      play
    elsif
      answer == "i"
      instructions
    elsif
      answer == "q"
      quit
    else
      invalid_input
    end
  end

  def play
    puts "Computer player: 'Hello, honored adversary, my armada is in place."
    puts "\n"
    puts "It's time to place your ships."
    puts "Your first is two units long, and the second is three units long."
    puts "The grid has A1 at the top left, and D4 at the bottom right."
    puts "\n"
    place_coordinates
  end

  def game_setup
    size = 1
    player_board = Board.new(size)
    computer_board = Board.new(size)
    @game = Game.new(player_board, computer_board)
  end

  def place_coordinates
    puts "Your ships must abide by these parameters:"
    puts "----------------------------------------"
    puts "1. Ships cannot wrap around the board."
    puts "2. Ships cannot overlap"
    puts "3. Ships can be laid either horizontally or vertically"
    puts "4. Coordinates must correspond to the first and last units of the ship."
    puts "   IE: you cannot put a two-unit ship on A1 A3."
    puts "----------------------------------------"
    puts "Coordinates must be entered with a single space: B1 B2"
    puts "ENTER THE COORDINATES FOR YOUR TWO UNIT SHIP:"

    game_setup
    placement_ship_1 = gets.chomp

    puts "ENTER THE COORDINATES FOR YOU THREE UNIT SHIP:"

    placement_ship_2 = gets.chomp
    valid = @game.player_board.sanitation_station(placement_ship_1, placement_ship_2)
  end

  def invalid_input
    puts "Invalid entry."
  end

  def instructions
    puts "\n"
    puts "1. Choose 'p' to play game."
    puts "2. You and computer player set ships."
    puts "3. Take turns firing missiles at each others grids the idea is to destroy your enemies ships before they destroy yours."
    puts "4. If you hit a ship, it will be indicated with an 'H', a miss will be indicated with an 'M'."
    puts "5. Whoever sinks both of their opponent's ships wins!!"
    puts "\n"
    # binding.pry
    puts "Would you like to play (y)es or (n)o?"
    choice = gets.chomp
    if choice == "y"
      play
    elsif choice == "n"
      puts "See ya"
    else
      invalid_input
      instructions
    end
  end

  def quit
    puts "Are you sure you aren't ready for battle? (q)uit or (p)lay."
    reply = gets.chomp
    if reply == "q"
      puts "My armada will await you for another time."
    elsif reply == "p"
      play
    else
      invalid_input
    end
  end

end
# welcome = Welcome.new
# welcome.welcome_page
