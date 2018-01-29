class Artist
  attr_accessor :name, :songs
  @@artists = []

  def initialize
    @songs = []
    @@artists << self
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def genres
    genres = []
    @songs.each do |song|
      genres << song.genre
    end
    genres
  end
end