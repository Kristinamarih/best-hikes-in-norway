class BestHikes::CLI 
  
  def call 
    BestHikes::Scraper.new.make_hike
    puts "Best Hikes in Norway"
    display_hikes
  end
  
  def display_hikes
    puts "Here are some of the best hikes in Norway!"
    
    hike_list
    
    puts "Please enter the number of the hike you'd like more information on:"
    
    input = gets.strip.to_i 
  end
  
  def hike_list
    BestHikes::Hikes.all.each.with_index(1) do |hike, index|
    puts "#{index}. #{hike.name} - #{hike.location}"
  end
  
  def print_hike(hike)
    puts ""
    puts "----------- #{hike.name} - #{hike.location} -----------"
    puts ""
    puts "Length:             #{hike.length}"
    puts "Difficulty:         #{hike.difficulty}"
    puts "URL:                #{hike.url}"
  end
end

end
 