require 'pry'

class Artist

    attr_accessor :songs
    attr_reader :name

    def initialize(name)

        @name = name
        @songs = []

    end

    def songs

        Song.all.select{|element| element.artist == self}
        
    end

    def add_song(song)

        song.artist = self
        @songs << song
        
    end

    def add_song_by_name(song_name)

        song = Song.new(song_name)
        self.add_song(song)
        
    end

    def self.song_count

        Song.all.size
        
    end

end