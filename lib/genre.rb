class Genre

attr_accessor :name, :songs

Genres = []

def initialize
  @songs = []
  @artists = []
  Genres << self
end

def artists
  @songs.each {|song| @artists << song.artist unless @artists.include? (song.artist)}
  @artists
end

def self.reset_genres
  Genres.clear
end 

def self.all
  Genres
end

def self.count
  Genres.size
end

end