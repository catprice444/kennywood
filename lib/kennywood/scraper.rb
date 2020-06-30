class Kennywood::Scraper
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :kennywood

  #first page = name
  # second_page = min_height, thrill_level, other, disclaimer, description

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


  # def self.scrape
  #   website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  #
  # end
  #
  # def self.about
  #   @about = kennywood.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
  #   @about.text
  # end

  # min_height =
  # thrill_level =
  # other =

  # def self.disclaimer
  #   @disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text
  # end

  # def self.description
  #   @description = kennywood.css("div.pcore2_tile_copy p").text
  # end

  # def self.name
  #   @name = kennywood.css("div.pcore2_tile_copy h2").text
  # end

  # def profile_url
  #   @url = kennywood.css('div.pcore2_tile_copy a').map { |link| link['href'] }
  # end

# binding.pry


end
