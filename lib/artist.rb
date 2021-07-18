class Artist
    attr_accessor :name, :songs, :artist
    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
      @@all.detect {|artist| artist.name == name} || Artist.new(name)
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end