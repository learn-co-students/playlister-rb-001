require 'pry'

class Genre
  @@genres = []

  attr_accessor :name, :songs, :artists

  def initialize
    @songs = []
    @artists = []
    @@genres << self
  end

  def self.all
    @@genres
  end

  def self.count
    all.length
  end

  def self.reset_genres
    all.clear
  end
end