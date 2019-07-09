require 'nokogiri'
require 'open-uri'
require 'pry'

class BestHikes::Scraper
  
  def get_page 
    Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))
  end
  
  def get_hikes 
    self.get_page.css("div.column.is-one-third-tablet")
  end
  
  def make_hikes 
    self.get_hikes.each do |hike|
      hike = Hike.new 
      hike.name = hike.css(".sort-title").text
      hike.location = hike.css("a").attribute("href").value
      hike.duration = 
      hike.difficulty = 
      hike.description = 
      hike.url = 
    end
  end
end