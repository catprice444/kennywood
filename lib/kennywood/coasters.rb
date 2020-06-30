class Kennywood::Coasters
  attr_accessor :name, :disclaimer, :description, :about, :url
  @@all = []

  def initialize
      @@all << self
    end

  def self.all
    @@all
  end

end
