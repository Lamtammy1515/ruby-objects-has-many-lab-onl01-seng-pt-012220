class Author 
  attr_accessor :name, :author  
  @@all = []
  def initialize(name)
    @name = name 
    @posts = [] 
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(name)
   self.posts << name 
   name.author = self 
   @posts << self 
  end 
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    new_post.author = self 
    @@all << self 
  
  end 

  def self.post_count 
    @@all.length 
  end 
end 