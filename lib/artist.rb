require 'pry'

class Artist

  @@artists = []
  
  attr_accessor :songs, :name

  def initialize
    @songs = []
    @@artists.push(self)
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def genres
    array = []
    @songs.each do |song|
      array.push(song.genre)
    end
    array
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

end