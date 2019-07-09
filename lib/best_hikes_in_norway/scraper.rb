require 'nokogiri'
require 'open-uri'
require 'pry'

class BestHikes::Scraper
  
  def get_page 
    Nokogiri::HTML(open(https://outtt.com/en/guides/225/12-best-hikes-norway))
  end
  
  def get_hikes 
    self.get_page.css()
  end
  
  def make_hikes 
    self.get_hikes.each do |hike|
      hike = Hike.new 
      hike.name = 
      hike.location = 
      hike.duration = 
      hike.difficulty = 
      hike.description = 
      hike.url = 
    end
  end
end