class Artist

attr_accessor :name, :songs
Artists = []

def initialize
  @songs = []
  @genres = []
  Artists << self
end

def add_song (song)
  self.songs << song
  song.artist = self
end

def genres
  @songs.each {|song| @genres << song.genre unless @genres.include?(song.genre)}
  @genres
end

def self.reset_artists
  Artists.clear

end

def self.all
  Artists
end

def self.count
  Artists.size
end

end