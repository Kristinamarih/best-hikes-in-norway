class BestHikes::Hikes
  
  attr_accessor :name, :location, :length, :difficulty, :url 
  
  @@all = []
  
  def initialize(hike_hash)
    hike_hash.each{|k, v| self.send(("#{key}="), v)}
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
   def self.new_from_page(hikes)
    hikes.each{|hike_hash| self.new(hike_hash)}
  end
end