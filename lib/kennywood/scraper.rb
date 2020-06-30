class Kennywood::Scraper
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :website, :url

  #first page = name
  #second_page = name, min_height, thrill_level, other, disclaimer, description




  def self.scrape
    website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
    rides = website.css("div.pcore2_tile_copy")
    rides.each do |ride|
      indiv_ride = Kennywood::Coasters.new
      indiv_ride.name = ride.css("h2").text
      indiv_ride.disclaimer = ride.css("i").text
      indiv_ride.description = ride.css("p").text
      indiv_ride.url = ride.css("a").map { |link| link['href'] }
      # indiv_ride.about = ride.css("div.pcore_tiles_attribicons").text
      indiv_ride.about = ride.css("div.pcore_tiles_attribicons").children.map {|height| height.text}
      # if ride.css("div.pcore_tiles_attribicons").css('div').text.include?("Minimum Height")
      #   indiv_ride.min_height = ride.css("div.pcore_tiles_attribicons").css('div').text
      # elsif ride.css("div.pcore_tiles_attribicons").css('div').text.include?("Thrill Level")
      #     indiv_ride.thrill_level = ride.css("div.pcore_tiles_attribicons").css('div').text
      #   end
      end

    end

    # info = {}
    # about.css("div.pcore_tiles_attribicons").each do |info|
    #   if about.css('span').text.include?("Minimum Height")
    #     all[:min_height] = about.css("div.background-image").text
    #     elsif info.css('span').text.include?("Thrill Level")
    #       all[:thrill_level] = info.css("div.background-image").text
    #     end
    #     info
    #   end

#   def self.second_section
#     website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
#     sections = website.css("div")
#     sections.each do |section|
#       # about_section = Kennywood::Coasters.new
#       information = self.new
#       information.about = section.css(".pcore_tiles_attribicons").each {|all| all['#text']}
#
#     end
# end
# binding.pry


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
