class BestHikes::CLI 
  
  def call 
    puts "Best Hikes in Norway"
    display_hikes
    hike_info
  end
  
  def display_hikes
    BestHikes::Hikes.new_from_page(BestHikes::Scraper.get_page)
  end
  
  def hike_info
    puts "Please enter the number of the hike you'd like more information on."
    display_hikes
    input = gets.strip.to_i 
    puts "Hikes:"
    
  end
  
end