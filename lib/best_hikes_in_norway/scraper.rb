class BestHikes::Scraper
  
  def get_page 
    Nokogiri::HTML(open(https://www.earthtrekkers.com/best-hikes-in-norway-and-svalbard/))
  end
  
  def get_hikes 
    self.get_page.css()
  end
  
  def make_hikes 
    self.get_hikes.each do |hike|
      hike = Hike.new 
      hike
  end
end