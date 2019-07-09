class BestHikes::CLI 
  
  def call 
    puts "Best Hikes in Norway"
    display_hikes
    hike_info
  end
  
  def display_hikes
    puts "Here are some of the best hikes in Norway!"
    BestHikes::Hikes.new_from_page(BestHikes::Scraper.get_page)
    BestHikes::Hikes.all.each_with_index do |index, hike|
      puts "#{index + 1}. #{hike}"
    end
  end
  
  def hike_info
    puts "Please enter the number of the hike you'd like more information on."
    input = gets.strip.to_i 
    
    
  end
  
end