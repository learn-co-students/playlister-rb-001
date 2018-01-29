class Genre
  attr_accessor :songs, :name
  @@genres = []

  def initialize
    @songs = []
    @artists = []
    @@genres << self
  end

  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.count
  end

  def artists
    artists = []
    songs.each do |song|
      if !artists.include?(song.artist)
        artists << song.artist
      end
    end
    artists
  end
end