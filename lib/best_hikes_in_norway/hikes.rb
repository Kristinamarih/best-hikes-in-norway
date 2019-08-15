class BestHikes::Hikes
  
  attr_accessor :name, :location, :distance, :difficulty, :duration, :website
  
  @@all = []
  
  def initialize(name=nil, location=nil)
    @name = name 
    @location = location
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
  def self.new_from_page(hike)
     self.new(
       hike.css(".sort-title").text, 
       hike.css(".has-text-grey").text)
  end
  
  def distance 
    @length ||= doc.css("span.sort-distance").text
  end
  
  def difficulty
    @difficulty ||= doc.css(".sort-difficulty").text
  end
  
  def duration
    @duration ||= doc.css("span:nth-child(6)").text
  end
  
  def website 
    @website ||= doc.css("div:nth-child(6) > div > div > figure > a").attribute("href").text
    @website = "https://outtt.com" << @website
  end
  
  def doc
    @doc ||= Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))
  end
end