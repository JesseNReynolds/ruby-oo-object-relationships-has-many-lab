class Author
    attr_accessor :name, :post

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |post_instance| post_instance.author == self}
    end

    def add_post(post)
        post.author = self
        post.save
    end

    def add_post_by_title(name)
        name = Post.new(name)
        name.author = self
    end

    def self.post_count
        # count = 0
        # post.all.each do |post_instance|
        #     if post_instance.Author != nil
        #         count += 1
        #     end
        # end
        Post.all.uniq.count
    end
end
