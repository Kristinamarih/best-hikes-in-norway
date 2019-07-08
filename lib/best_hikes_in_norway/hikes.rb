class Hikes::Hike
  
  attr_accessor :name, :location, :duration, :difficulty, :description, :url 
  
  @@all = []
  
  def self.new_from_page
    
  end
  
  def initialize(name=nil, location=nil, url=nil)
    @name = name 
    @location = location 
    @url = url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def duration 
    
  end
  
  def difficulty
    
  end
  
  def description 
    
  end

end