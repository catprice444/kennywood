class Kennywood::Scraper
  attr_accessor :name, :disclaimer, :description, :about, :url

  #first page = name
  #second_page = name, min_height, thrill_level, other, disclaimer, description, url


  def self.scrape
    website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
    rides = website.css("div.pcore2_tile_copy")
    
    rides.each do |ride|
      indiv_ride = Kennywood::Coasters.new
      indiv_ride.name = ride.css("h2").text
      indiv_ride.disclaimer = ride.css("i").text
      indiv_ride.description = ride.css("p").text
      indiv_ride.url = ride.css("a").map { |link| link['href'] }
      indiv_ride.about = ride.css("div.pcore_tiles_attribicons").children.map {|att| att.text}
      end

    end

end
