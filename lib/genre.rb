class Genre

  attr_accessor :name, :songs, :artists

  @@song_genres = []

  def initialize
    @songs = []
    @artists = []
    @@song_genres << self
  end

  def self.reset_genres
    @@song_genres = []
  end

  def self.all
    @@song_genres
  end

  def self.count
    @@song_genres.length
  end

  def add_artist(artist)
    @artists << artist
  end

  def artists
    # @songs.collect do |song|
    #   # binding.pry
    #   @artists << song.artist #unless @artists.include? (song.artist)
    # end
    # binding.pry
    @artists.uniq
  end

end
