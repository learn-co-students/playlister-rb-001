# code song here
require "pry"
class Song
  attr_accessor :name, :artist
  attr_reader :genre
  def initialize
    @genre = ""
  end

  def genre=(name)
    @genre = name
    @genre.songs << self
  end
end
