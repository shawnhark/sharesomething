class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def set_words_category
    @category = Category.find_by slug: "words"
  end
  
  def set_pics_category
    @category = Category.find_by slug: "pics"
  end

    def set_vids_category
    @category = Category.find_by slug: "vids"
  end


  def post_params
    params.require(:post).permit(:name, :slug)
  end
end