require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist ,:genre
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        count_gen={}
        @@genres.each {|genre|
    if count_gen[genre]
        count_gen[genre] +=1
    else
        count_gen[genre] =1
    end
    }
    count_gen
    end
    def self.artist_count
        count_gen={}
        @@artists.each {|genre|
    if count_gen[genre]
        count_gen[genre] +=1
    else
        count_gen[genre] =1
    end
    }
    count_gen
    end
end
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

