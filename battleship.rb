puts "Welcome to Battleship, Player One."

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
answer = gets.chomp

# this needs to be looped, currently this is not how that works though


  if answer == "p" || answer == "play"
    # computer places ship based on spec parameters
    # Ships cannot wrap around the board
    # Ships cannot overlap
    # Ships can be laid either horizontally or vertically
    # Coordinates must correspond to the first and last units
    # of the ship. (IE: You can’t place a two unit ship at “A1 A3”)
    # figure out how to automatically have the computer ships put in place
    puts "Computer player: 'Hello, honored adversary, my armada is in place.
    Place your two ships.
    Your first is two units long, and the second is three units long.
    The grid has A1 at the top left, and D4 at the bottom right.'
    Enter the squares for your two unit ship:"
    answer = gets.chomp
    # make sure this is only two units and that it must be enterd before moving forward
    # if loop for answer parameters and guidelines
    puts "Now enter the squares for your three unit ship:"
    answer = gets.chomp
    # if loop for answer parameters and guidelines
    # make sure this is three units
    # we need to validate the entries according to the parameters
    # THIS IS WHERE WE START main game flow phase
  elsif
    answer == "i" || answer == "instructions"
    puts "1. Choose 'p' to play game.
    2. You and computer player set ships.
    3. Take turns firing missiles at each others grids the idea is to destroy your enemies ships before they destroy yours.
    4. If you hit a ship, it will be indicated with an 'H', a miss will be indicated with an 'M'.
    5. Whoever sinks both of their opponent's ships wins!!"

    puts "Would you like to (p)lay or (q)uit?"
    answer = gets.chomp
    # also needs to loop, currently goes into the ether
    # loop in a loop
  elsif
    answer == "q" || answer == "quit"
    puts "Boring!"
  else
    p "Invalid entry, please try again."
    # needs to loop
  end


# ^^^^will need to be some sort of loop so that IF it is an
# invalid entry, it will restart at the top. REPL LOL
# also...how do we make this "go somewhere" when they select "play"
# it seems like it can all be in here, confused about classes or
# if this is just something that can be run like this
# have not yet delved into how it actually works with everything IN CODE
