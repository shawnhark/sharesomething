class Post < ActiveRecord::Base

  def word_index
    @word_posts = Post.find_by category: "Words"
  end

end