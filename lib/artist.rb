require 'pry'

class Artist

    @@all=[]

    def self.song_count
        sum=0
        @@all.each do |artist|
             sum += artist.songs.size 
            end
        sum
    end

    attr_accessor :name

    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select do |song| song.artist == self end
        #returns an array
    end

    def add_song(song_instance)
        song_instance.artist=self
    end

    def add_song_by_name(title)
        song = Song.new(title)
        song.artist=self
    end

 

end