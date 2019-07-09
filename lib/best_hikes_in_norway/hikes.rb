class BestHikes::Hikes
  
  attr_accessor :name, :location, :length, :difficulty, :url 
  
  @@all = []
  
  def initialize(name=nil, location=nil)
    @name = name 
    @location = location
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(input)
    self.all[input-1]
  end
  
  def self.new_from_page(hike)
     self.new(hike.css(".sort-title").text, hike.css(".has-text-grey").text)
  end
  
  def length 
    @length ||= hike.css(".sort-distance").text
  end
  
  def difficulty
    @difficulty ||= hike.css(".sort-difficulty").text
  end
  
  def url 
    @url ||= hike.css("a").attribute("href").text
  end
  
  def hike
    @hike ||= BestHikes::Scraper.new.get_hike
  end
end