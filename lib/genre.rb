require "pry"

class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @songs << new_song
  end

  def artists
    @songs.map {|song| song.artist}
  end

end
