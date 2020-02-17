class Author 
  attr_accessor :name  
  @@counter = 0
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
   @@counter += 1 
  end 
  
  def add_post_by_title(name)
   self.posts << name 
   name.author = self 
   @@counter += 1
  end 

  def self.post_count 
     Post.all.count
  end 
end 