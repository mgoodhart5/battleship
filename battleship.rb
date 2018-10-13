require 'pry'

class Welcome

  def welcome_page
    # binding.pry
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


  def game_setup
    size = 1
    player_board = Board.new(size)
    computer_board = Board.new(size)
    @game = Game.new(player_board, computer_board)
  end

  def place_first_ship(coordinates)
    # call parameter method
    if @game.player_board.validation_station(coordinates)
    #place_the_first_ship
    else
      invalid_input
      place_coordinates
    end
  end

  def place_second_ship(coordinates)
    # call parameter method
  end


  def place_coordinates
    puts "Ships cannot wrap around the board."
    puts "Ships cannot overlap"
    puts "Ships can be laid either horizontally or vertically"
    puts "Coordinates must correspond to the first and last units of the ship. \n (IE: You can’t place a two unit ship at “A1 A3”)"
    puts "Enter the coordinates for your two unit ship:"
    game_setup
    placement_1 = gets.chomp
    # validate first coordinate
    # place 2-unit_ship

    puts "Now enter the coordinates for your three unit ship:"
    placement_2 = gets.chomp
    #validate second coordinates
    # get the board to tell us if these are valid
    #if invalid say invalid and call this method again LoopLife
  end

  def play
    puts "Computer player: 'Hello, honored adversary, my armada is in place.
    Place your two ships.
    Your first is two units long, and the second is three units long.
    The grid has A1 at the top left, and D4 at the bottom right.' "
    place_coordinates
  end

  def invalid_input
    puts "Invalid entry."
  end

  def instructions
    puts "1. Choose 'p' to play game."
    puts "2. You and computer player set ships."
    puts "3. Take turns firing missiles at each others grids the idea is \n to destroy your enemies ships before they destroy yours."
    puts "4. If you hit a ship, it will be indicated with an 'H', a miss will be indicated with an 'M'."
    puts "5. Whoever sinks both of their opponent's ships wins!!"
    # binding.pry
    puts "Would you like to (p)lay or (q)uit?"
    choice = gets.chomp
    if choice == "p"
      # binding.pry
      play
    elsif choice == "q"
      # binding.pry
      quit
    else
      # binding.pry
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

welcome = Welcome.new
welcome.welcome_page
