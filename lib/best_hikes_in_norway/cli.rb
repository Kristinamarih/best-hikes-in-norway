class BestHikes::CLI 
  
  def call 
    puts "Best Hikes in Norway"
    BestHikes::Hikes.new_from_page(BestHikes::Scraper.get_page)
    display_hikes
    hike_info
  end
  
  def hike_list
    hike_list = BestHikes::Hikes.all.each.with_index do |hike, index|
    puts "#{index}. #{hike.name} - #{hike.location}"
  end
  
  def display_hikes
    puts "Here are some of the best hikes in Norway!"
    hike_list
    puts "Please enter the number of the hike you'd like more information on."
    input = gets.strip.to_i 
    hike_list.detect do |hike, index|
      if input == (index + 1)
      puts "You selected #{hike}. Good choice!"
    else
      nil 
    end
    
  end
  
  def hike_info
   
  end
  
end