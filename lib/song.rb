class Song

  attr_reader :genre
  attr_accessor :name, :artist

  def genre=(genre)
    #why doesn't self work here
    @genre = genre
    genre.songs << self
  end

end