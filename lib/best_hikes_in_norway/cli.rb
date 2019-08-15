class BestHikes::CLI 
  
  def call 
    BestHikes::Scraper.new.make_hike
    puts "Best Hikes in Norway!"
    display_hikes
  end
  
  def display_hikes
    puts "Here are some of the best hikes in Norway listed by name and location:"
    hike_list
    puts "Please enter the number of the hike you'd like more information on (1-12):"
    input = gets.strip 
    hike = BestHikes::Hikes.find(input.to_i)
    hike_info(hike)
    
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
  
  def hike_list
    BestHikes::Hikes.all.each.with_index(1) do |hike, index|
    puts "#{index}. #{hike.name} - #{hike.location}"
  end
  
  def hike_info(hike)
      puts ""
      puts "----------- #{hike.name} - #{hike.location} -----------"
      puts ""
      puts "Distance:           #{hike.distance}"
      puts "Difficulty:         #{hike.difficulty}"
      puts "Duration:           #{hike.duration}"
      puts "Website:            #{hike.website}"
    end
  end
end
