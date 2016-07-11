require 'pry'

class Song

  attr_accessor :name, :artist
  attr_reader :genre

  def initialize

  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end
