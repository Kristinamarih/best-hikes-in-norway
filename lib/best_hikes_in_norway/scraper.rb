class BestHikes::Scraper
  
  def get_page 
    Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))
  end
    
  def get_hike
     self.get_page.css("div.column.is-one-third-tablet")
  end
  
  def make_hike
    get_hike.each do |hike|
      BestHikes::Hikes.new_from_page(hike)
    end
  end
end

