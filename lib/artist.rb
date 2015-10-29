# code artist here
require "pry"
class Artist
  attr_accessor :name, :songs, :genres, :all
  ARTISTS = []
  def initialize
    @songs = []
    @genres = []
    ARTISTS << self
  end

  def add_song(song)
    song.artist = self
    ARTISTS << self
    @songs << song
    @genres << song.genre
    if song.genre != "" && !song.genre.artists.include?(self)
      song.genre.artists << self
    end
  end

  def self.all
    ARTISTS
  end

  def self.reset_artists
    ARTISTS.clear
  end

  def self.count
    ARTISTS.count
  end

end
