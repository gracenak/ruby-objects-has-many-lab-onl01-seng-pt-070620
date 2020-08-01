class Author
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = posts
  end
  
  def posts
    Post.all.select{|post|post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.post_count
    post_count = {}
    @@all.each do |post|
      if post_count[post]
        post_count[post] += 1
      else
        post_count[post] = 1
      end
    end
    post_count
  end
