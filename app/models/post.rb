class Post < ActiveRecord::Base
  include Simplevote
  belongs_to :category
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :comments

  def post_id
    comment.post_id
  end

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE?", "%#{search_term}%").order("created_at DESC")
    where("description LIKE?", "%#{search_term}%").order("created_at DESC")
  end


  def word_posts
    @word_posts = Category.find_by name: "Words"
    @posts = @word_posts.posts
  end

  def pic_posts
    @pic_posts = Category.find_by name: "Pics"
    @posts = @pic_posts.posts
  end

  def vid_posts
    @vid_posts = Category.find_by name: "Vids"
    @posts = @vid_posts.posts
  end

end