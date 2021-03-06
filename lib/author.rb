class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize (name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title (post_name)
    post = Post.new(post_name)
     @posts << post unless @posts.include? post
     post.author = self unless post.author
     @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
  
end
