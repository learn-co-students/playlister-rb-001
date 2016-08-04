class Genre

attr_accessor :name, :songs
attr_writer :artists

@@all_genres = []

  def initialize
    @songs = []
    @artists = []
    @@all_genres << self
  end

  def artists
    @artists.uniq
  end

  def add_artist(artist)
    @artists << artist
  end

  def add_song(song)
    @songs << song
  end

  def self.reset_genres
    @@all_genres = []
  end

  def self.all
    @@all_genres
  end

  def self.count
    @@all_genres.count
  end

end
