class Song

  attr_accessor :artist, :name
  attr_reader :genre

  def initialize
    @name = name
    @genre = genre
    @artist = artist
  end

  def genre= (genre)
    @genre = genre
    genre.songs << self
  end

end