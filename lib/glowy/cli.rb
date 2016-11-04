class Glowy::CLI

  def call
    puts "Today's Sunset Times:"
    time
    list
    menu
    goodbye
  end

  def time
    Glowy::Time.new.get_location
  end

  def list

    puts "1. Sunset Time: 6pm"
    puts "2. Sunset Time: 7pm"
    puts "3. Sunset Time: 8pm"
  end

  def menu
    input = nil
    while input != "exit"
      puts "What's the number of the sunset time you want to see? Or type exit to exit. Or 'list' to see sunset again."
      input = gets.strip
        if input == "1"
          puts "More info on 6pm Sunset Time..."
        elsif input == "2"
          puts "More info on 7pm Sunset Time..."
        elsif input == "3"
          puts "More info on 8pm Sunset Time..."
        elsif input == "list"
          list
        elsif input == "exit"
          break
        else
          puts "Invalid input!!! Please enter a valid number."
        end
     end   
  end

  def goodbye
    puts "See you next for more sunset times!!!"
  end

end