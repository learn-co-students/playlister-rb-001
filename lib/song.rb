require 'pry'
class Song

  attr_reader :genre
  attr_accessor :artist, :name

def initialize
end

def genre=(genre)
  genre.add_song(self)
  @genre = genre
end

end