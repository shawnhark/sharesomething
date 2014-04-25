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
  def set_category
    @category = Category.find_by slug: params[:id]
  end
  
  def post_params
    params.require(:post).permit(:name, :slug)
  end
end