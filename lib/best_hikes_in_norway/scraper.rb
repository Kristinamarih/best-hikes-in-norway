require 'nokogiri'
require 'open-uri'
require 'pry'

class BestHikes::Scraper
  
  def self.get_page 
    page = Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))
    
    hikes = []
    
    page.css("div.column.is-one-third-tablet").each do |hike|
      hike_hash={
            :name => hike.css(".sort-title").text,
            :location => hike.css(".has-text-grey has-text-weight-normal").text,
            :length => hike.css(".sort-distance").text,
            :difficulty => hike.css(".sort-difficulty").text,
            :url => hike.css("a").attribute("href").value
      }
      hikes << hike_hash
      hikes
    end
  end
end

binding.pry