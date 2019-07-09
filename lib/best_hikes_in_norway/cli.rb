class BestHikes::CLI 
  
  def call 
    list_hikes
    hike_info
  end
  
  def list_hikes 
    puts "Best Hikes in Norway:"
    BestHikes::Scraper.new
  end
  
  def hike_info
    puts "Please enter the number of the hike you'd like more information on."
    input = gets.strip.to_i 
    puts "Hikes:"
    
  end
  
end