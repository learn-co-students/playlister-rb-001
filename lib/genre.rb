# code genre here
class Genre
  GENRES = []
  attr_accessor :name, :songs, :artists
  def initialize
    @songs = []
    @artists = []
    GENRES << self
  end

  def self.all
    GENRES
  end

  def self.reset_genres
    GENRES.clear
  end

  def self.count
    GENRES.count
  end

end
