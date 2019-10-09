class Post

    attr_accessor :title, :author, :author_name

    @@all = []

    def initialize(title)

        @title = title
        @@all << self

    end

    def self.all

        @@all
        
    end

    def author_name
        
        author ? self.author.name : nil

        
    end

end