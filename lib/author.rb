require 'pry'

class Author

    attr_accessor :name

    def initialize(name)
        @name=name
    end

    def posts
       posts=[]# Post.all.collect do |post| post.author == self end
       Post.all
    end

    def add_post(post_inst)
        post_inst.author=self
    end

    def add_post_by_title(title)
        post=Post.new(title)
        post.author=self

    end

    def self.post_count
        #Post.all.size
        posts=Post.all.count
    end

end