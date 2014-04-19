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
  def post_params
    params.require(:post).permit(:namee, :slug)
  end
end