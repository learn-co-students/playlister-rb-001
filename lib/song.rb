class Song

attr_accessor :artist, :name
attr_reader :genre

def genre=(genre)
  @genre = genre
  genre.songs << self
end 

end