class Genre

  attr_accessor :songs, :name

  @@genres = []

  def Genre.all
    @@genres
  end

  def Genre.reset_genres
    @@genres.clear
  end

  def Genre.count
    @@genres.count
  end

  def initialize
    @name = name
    @songs = []
    @artists = []
    @@genres << self
  end

  def artists
    @artists = self.songs.collect {|song| song.artist}
    @artists = @artists.uniq
  end

end


