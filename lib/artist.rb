class Artist

  attr_accessor :songs, :name

  @@artists = []

  def Artist.reset_artists
    @@artists.clear
  end

  def Artist.count
    @@artists.count
  end


  def Artist.all
    @@artists
  end

  def initialize
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    @genre = self.songs.collect  {|song| song.genre}
  end

end


