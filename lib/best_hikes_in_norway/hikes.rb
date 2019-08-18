class BestHikes::Hike
  
  attr_accessor :name, :location, :distance, :difficulty, :duration, :website
  
  @@all = []
  
  def initialize(name, location, distance=nil, difficulty=nil, duration=nil, website=nil)
    @name = name 
    @location = location
    @distance = distance
    @difficulty = difficulty
    @duration = duration
    @website = website
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
   def self.hike_list
    @@all.each.with_index(1) do |hike, index|
      puts "#{index}. #{hike.name} - #{hike.location}"
    end
  end
  
  def self.hike_info(hike)
    puts "#{hike.name} - #{hike.location}"
    puts ""
    puts "Distance: #{hike.distance}"
    puts "Difficulty: #{hike.difficulty}"
    puts "Duration: #{hike.duration}"
    puts "Website: #{hike.website}"
  end
end
  
 
  
 # def self.new_from_page(h)
 #    self.new(
 #      h.css(".sort-title").text, 
 #      h.css(".has-text-grey").text)
 # end
  
 # def distance 
 #    @distance ||= doc.css("span.sort-distance").text
 # end
  
 # def difficulty
 #  @difficulty ||= doc.css(".sort-difficulty").text
 # end
  
 # def duration
 #  @duration ||= doc.css("span:nth-child(6)").text
 # end
  
 # def website 
 #  @website ||= doc.css("a").attribute("href").text
 #  @website = "https://outtt.com" << @website
 # end
  
 # def doc
 #  @doc ||= Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))
 # end