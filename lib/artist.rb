require 'pry'

class Artist
  @@artists = []

  attr_accessor :name, :songs, :genres

  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    genres << song.genre
    song.artist = self
    unless song.genre == nil || song.genre.artists.include?(self)
      song.genre.artists << self
    end
  end

  def self.all
    @@artists
  end

  def self.count
    all.length
  end

  def self.reset_artists
    all.clear
  end
end