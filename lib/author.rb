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
    self.all.each do {|post|post += 1}
      puts post.count
    end
  end
    
end
   
