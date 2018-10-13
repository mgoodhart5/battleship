
class Welcome

  def welcome_page
    puts "Welcome to Battleship, Player One."
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    answer = gets.chomp
    if
      answer == "p" || answer == "play"
      #call play method
    end
  end

  def play
    puts "Computer player: 'Hello, honored adversary, my armada is in place.
    Place your two ships.
    Your first is two units long, and the second is three units long.
    The grid has A1 at the top left, and D4 at the bottom right.' "

  end

  def place_coordinates
    puts "Enter the coordinates for your two unit ship:"
    placement_1 = gets.chomp
    # validate first coordinates

    puts "Now enter the coordinates for your three unit ship:"
    placement_2 = gets.chomp
    #validate second coordinates
    # get the board to tell us if these are valid
    #if invalid say invalid and call this method again LoopLife
  end

  def invalid_input
    puts "Invalid entry."
  end

  def instructions
    answer == "i"
    puts "1. Choose 'p' to play game."
    puts "2. You and computer player set ships."
    puts "3. Take turns firing missiles at each others grids the idea is \n to destroy your enemies ships before they destroy yours."
    puts "4. If you hit a ship, it will be indicated with an 'H', a miss will be indicated with an 'M'."
    puts "5. Whoever sinks both of their opponent's ships wins!!"
    puts "Would you like to (p)lay or (q)uit?"
    choice = gets.chomp
    if choice == "p"
      play
    elsif choice == "q"
      quit
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

welcome = Welcome.new
welcome.welcome_page
