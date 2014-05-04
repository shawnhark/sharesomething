class Category < ActiveRecord::Base
  has_many :posts, -> { order("created_at DESC") }
  validates_presence_of :name, :slug

  def word_index
    @category = Category.find_by name: "Words"
  end

  def pic_index
    @category = Category.find_by name: "Pics"
  end

  def vid_index
    @category = Category.find_by name: "Vids"
  end

  def recent_videos
    posts.first(10)
  end

end