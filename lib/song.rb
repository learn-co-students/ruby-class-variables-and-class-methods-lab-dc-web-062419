require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each {|genre| genre_hash[genre] = @@genres.count(genre)}
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each {|artist| artist_hash[artist] = @@artists.count(artist)}
    artist_hash
  end
end
