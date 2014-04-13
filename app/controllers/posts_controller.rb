class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:title, :post_url, :description, :image, :category_id)
  end
end