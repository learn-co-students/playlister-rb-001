class Song

  attr_accessor :name, :artist, :genre

  def genre=(genre)
    #why doesn't self work here
    @genre = genre
    genre.songs << self
  end

end