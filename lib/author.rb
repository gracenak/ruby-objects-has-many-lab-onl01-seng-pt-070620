class Author
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = posts
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = post.new(title)
    add_post(post)
  end
    
  
  
end