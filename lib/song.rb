class Song

    @@all=[]

    def self.all
        @@all
    end

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

 
    def artist=(artist_instance)
        @artist = artist_instance
    end

    def artist_name
        self.artist.nil? ? nil : self.artist.name
    end

end