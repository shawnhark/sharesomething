class Post < ActiveRecord::Base
belongs_to :category

  def word_index
    @posts = Post.find_by category: "Words"
  end

end