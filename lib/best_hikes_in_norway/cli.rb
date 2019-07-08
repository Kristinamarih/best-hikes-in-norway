class Hikes::CLI 
  
  def call 
    Hikes::Scraper.new
    puts "Best Hikes in Norway"
    start
  end
  
  def start 
    puts "Please enter the number of the hike you'd like more information on."
    input = gets.strip.to_i 
    
  end
  
  def list_hikes
    puts "Hikes:"
    
  end
  
end