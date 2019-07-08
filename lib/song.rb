require 'pry' 
class Song

    attr_reader :name, :artist, :genre

    @@all = []
    @@names = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@names << name
        # if @@names.include?(name) 
        # else
        @@all << self
        # end
        @@count += 1
        @@artists << artist
        @@genres << genre 
    end

    def self.all
        @@all 
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
        tally = {} 
        self.genres.each {|g| tally[g]=0}
        @@genres.each {|g| tally[g]+=1} 
        tally
    end

    def self.artist_count
        tally = {}
        self.artists.map {|a| tally[a]=0}
        done = []
        @@all.each do |s| 
            if !done.include?(s.name)
                tally[s.artist]+=1 
            end
            done << s.name
        end
        tally
    end


end