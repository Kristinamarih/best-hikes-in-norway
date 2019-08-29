class BestHikes::Hike

  attr_accessor :name, :location, :distance, :difficulty, :duration, :website

  @@all = []

  def initialize(name, location, distance=nil, difficulty=nil, duration=nil, website=nil) # initialize new instance of Hike with hike details
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

  def self.find(id) # user input from cli passed in as argument
    self.all[id-1]
  end

  def self.find_by_word(word)
    @@all.each do |h|
      if h.name.include?(word)
        puts h
      end
    end
  end

   def self.hike_list
    @@all.each.with_index(1) do |hike, index|
      puts "#{index}. #{hike.name} - #{hike.location}"
    end
  end

  def self.hike_info(hike)
    puts ""
    puts ""
    puts ""
    puts "#{hike.name} - #{hike.location}"
    puts ""
    puts "Distance: #{hike.distance}"
    puts "Difficulty: #{hike.difficulty}"
    puts "Duration: #{hike.duration}"
    puts "Website: #{hike.website}"
    puts ""
  end
end
