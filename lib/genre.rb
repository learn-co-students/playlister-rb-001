require 'pry'

class Genre

  @@genres = []

  attr_accessor :songs, :name

  def initialize
    @songs = []
    @@genres.push(self)
  end

  def artists
    array = []
    @songs.each do |song|
      array.push(song.artist)
    end
    array = array.uniq
    array
  end

  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.count
  end
end