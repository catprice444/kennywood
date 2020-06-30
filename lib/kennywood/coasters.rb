class Kennywood::Coasters
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about, :url
  @@all = []

  def initialize
      @@all << self
    end

  def self.all
    @@all
  end


end
