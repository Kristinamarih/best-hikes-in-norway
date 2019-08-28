class BestHikes::Hike
  # each instance (object) contains instance variables which are the state of
  # the object (attributes). Object behaviors are represented by methods.

  attr_accessor :name, :location, :distance, :difficulty, :duration, :website
  # attr_accessor to read and write attributes

  @@all = [] # class variable is shared by all instances of the class

  def initialize(name, location, distance=nil, difficulty=nil, duration=nil, website=nil)
    # initialize new instance of Hike with hike details
    # assign arugments to instance variables
    @name = name
    @location = location
    @distance = distance
    @difficulty = difficulty
    @duration = duration
    @website = website
    @@all << self
  end
  # use self to indicate class methods, can only be called on class
  def self.all
    @@all
  end

  def self.find(id) # user input from cli passed in as argument
    self.all[id-1]
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
