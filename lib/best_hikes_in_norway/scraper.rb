class BestHikes::Scraper

  def get_page
    Nokogiri::HTML(open("https://outtt.com/en/guides/225/12-best-hikes-norway"))                                  # get webpage to scrape
  end

  def get_hike
     self.get_page.css("div.columns.is-multiline div.column.is-one-third-tablet")                             # set method to scrape webpage for each hike section
  end

  def make_hikes
    get_hike.each do |h|                                 # iterate through each hike from get_hike method to scrape details for each hike
      name =  h.css(".sort-title").text
      location = h.css(".has-text-grey").text
      distance = h.css(".sort-distance").text
      difficulty = h.css(".sort-difficulty").text
      duration = h.css("span:nth-child(6)").text.gsub(/\s+/, "")
      url = h.css("a").attribute("href").text
      website = "https://outtt.com" << url
      BestHikes::Hike.new(name, location, distance, difficulty, duration, website)
    end
  end
end
