class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  private
  def post_params
    params.require(:post).permit(:namee, :slug)
  end
end