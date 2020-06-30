class Kennywood::Scraper
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :website

  #first page = name
  #second_page = name, min_height, thrill_level, other, disclaimer, description

def self.scrape
  website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  rides = website.css("div.pcore2_tile_copy")
  rides.each do |ride|
    indiv_ride = Kennywood::Coasters.new
    indiv_ride.name = rides.css("h2").text
    indiv_ride.disclaimer = rides.css("i").text
    indiv_ride.description = rides.css("p").text
    end

end




  # def website
  #   @website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  # end

  # def self.about
  #   @about = website.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
  #   @about.text
  # end

  # min_height =
  # thrill_level =
  # other =

  # def disclaimer
  #   @disclaimer = website.css("div.pcore2_tile_copy").css("i").text
  # end

  # def description
  #   @description = website.css("div.pcore2_tile_copy p").text
  # end

  # def name
  #   @name = website.css("div.pcore2_tile_copy h2").text
  # end

  # def profile_url
  #   @url = website.css('div.pcore2_tile_copy a').map { |link| link['href'] }
  # end

# binding.pry


end
