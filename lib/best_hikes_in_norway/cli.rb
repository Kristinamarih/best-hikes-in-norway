require 'pry'
class BestHikes::CLI 
  
  def call 
    BestHikes::Scraper.new.make_hikes
    puts "Best Hikes in Norway!"
    display_hikes
  end
  
  def display_hikes
    puts "Here are some of the best hikes in Norway listed by name and location:"
    BestHikes::Hike.hike_list
    puts "Please enter the number of the hike you'd like more information on (1-12):"
  
    input = gets.strip 
    hike = BestHikes::Hike.find(input.to_i)
    BestHikes::Hike.hike_info(hike)
    
    puts "Would you like to see more hikes? Please enter Y or N!"
    input = gets.strip.downcase
    if input == "y"
      display_hikes
      elsif input == "n"
      puts "Thank you for your interest in hikes in Norway!"
      exit
    else
      display_hikes
    end
  end
end
  
