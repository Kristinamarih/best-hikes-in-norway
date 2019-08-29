class BestHikes::CLI

  def call
    BestHikes::Scraper.new.make_hikes # call on Scraper class to get hikes
    puts "Best Hikes in Norway!".red.on_blue.bold
    display_hikes
  end

  def display_hikes
    puts "Here are some of the best hikes in Norway listed by name and location:".red
    puts ""
    BestHikes::Hike.hike_list # call on Hike class to get list of hikes
    puts ""
    puts "Please enter the number of the hike you'd like more information on (1-12):".red

    input = gets.strip.to_i
    if input > 12 || input.kind_of?(Integer)
      puts "Oops! Please enter a number between 1 and 12".red
      input = gets.strip.to_i
      hike = BestHikes::Hike.find(input)
      BestHikes::Hike.hike_info(hike)
    else
      hike = BestHikes::Hike.find(input) # call on find method in Hike class & assign to hike variable
      BestHikes::Hike.hike_info(hike)
    end

    puts "Would you like to see more hikes? Please enter Y or N!".red
    input = gets.strip.downcase
    if input == "y"
      display_hikes
      elsif input == "n"
      puts "Thank you for your interest in hikes in Norway!".red
      exit
    else
      display_hikes
    end
  end
end
