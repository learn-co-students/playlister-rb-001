require 'pry'
class Artist

  attr_accessor :name, :songs, :genres

@@all_artists = []

  def initialize
    @songs = []
    @genres = []
    @@all_artists << self
  end

  def add_song(new_song)
    @songs << new_song
    @genres << new_song.genre
    new_song.artist = self
    if new_song.genre != nil
      new_song.genre.add_artist(self)
    end
  end

  def self.reset_artists
    @@all_artists = []
  end

  def self.all
    @@all_artists
  end

  def self.count
    @@all_artists.count
  end

end