class Kennywood::Scraper
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :website, :url

  #first page = name
  #second_page = name, min_height, thrill_level, other, disclaimer, description

def self.scrape
  website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  rides = website.css("div.pcore2_tile_copy")
  rides.each do |ride|
    # binding.pry
    indiv_ride = Kennywood::Coasters.new
    indiv_ride.name = ride.css("h2").text
    indiv_ride.disclaimer = ride.css("i").text
    indiv_ride.description = ride.css("p").text
    # indiv_ride.about = website.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
    # indiv_ride.url = website.css('div.pcore2_tile_copy a').map { |link| link['href'] }
    end

end

  def self.sections
    website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
    section = website.css("div")
    sections.each do |section|
      about_section = Kennywood::Coasters.new
      about = section.css(".pcore_tiles_attribicons").each {|all| all['#text']}

    end
end
binding.pry


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




end
