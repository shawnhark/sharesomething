class Category < ActiveRecord::Base

  def word_index
    @category = Category.find_by name: "Words"
  end

  def pic_index
    @category = Category.find_by name: "Pics"
  end

  def vid_index
    @category = Category.find_by name: "Vids"
  end

end