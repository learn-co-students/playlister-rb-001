require 'pry'

class Artist

  attr_accessor :songs, :name, :genres

  @@all_artists = []

  def initialize
    @songs = []
    @genres = []
    @@all_artists << self
  end

  def add_song(song)
    @songs << song
    # calling on genre method from Song class
    @genres << song.genre
    song.artist = self
    if song.genre != nil
      song.genre.add_artist(self)
    end
  end

  def self.reset_artists
    # binding.pry
    @@all_artists = []
  end

  def self.all
    @@all_artists
  end

  def self.count
    @@all_artists.length
  end

end
