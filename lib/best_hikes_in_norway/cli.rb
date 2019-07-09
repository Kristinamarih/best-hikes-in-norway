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
    input = gets.strip.to_i 
    selected_hike = BestHikes::Hikes.find(input)
    hike_info(selected_hike)
  end
  
  def hike_list
    BestHikes::Hikes.all.each_with_index do |hike, index|
    puts "#{index + 1}. #{hike.name} - #{hike.location}"
  end
  
  def hike_info(selected_hike)
      puts ""
      puts "----------- #{selected_hike.name} - #{selected_hike.location} -----------"
      puts ""
      puts "Length:             #{selected_hike.length}"
      puts "Difficulty:         #{selected_hike.difficulty}"
      puts "Website:            #{selected_hike.url}"
    end
  end
end
