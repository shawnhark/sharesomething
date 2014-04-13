class Post < ActiveRecord::Base

  def word_index
    @word_posts = Category.find_by name: "Words"
  end

end