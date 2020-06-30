class Kennywood::Coasters
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :url, :website
  @@all = []

  def initialize
      @@all << self
    end

  def self.all
    @@all
  end

  # def self.id(number)
  #   self.all[number.to_i-1]
  # end
  #
  #
  # def about
  #   @about = website.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
  #   @@all << @about
  # end
  #
  # def website
  #   @website = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  # end

end
