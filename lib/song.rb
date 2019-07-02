require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

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
        count_genres = {}
        @@genres.each do |genre| 
            if count_genres.has_key?(genre)
                count_genres[genre] += 1
            else
                count_genres[genre] = 1
            end
        end
        count_genres
    end

    def self.artist_count
        count_artists = {}
        @@artists.each do |artist|
            if count_artists.has_key?(artist)
                count_artists[artist] += 1
            else
                count_artists[artist] = 1
            end
        end
        count_artists
    end
end
