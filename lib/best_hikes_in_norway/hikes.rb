class BestHikes::Hikes
  
  attr_accessor :name, :location, :length, :difficulty, :url 
  
  @@all = []
  
  def initialize(name=nil, location=nil, url=nil)
    @name = name 
    @location =location
    @url =url
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
   def self.new_from_page(hike)
     self.new(hike.css(".sort-title").text, hike.css(".has-text-grey .has-normal-weight").text, hike.css("a").attribute("href").text)
  end
  
  def length 
    @length = hike.css(".sort-distance").text
  end
  
  def difficulty
    @difficulty = hike.css(".sort-difficulty").text
  end
end