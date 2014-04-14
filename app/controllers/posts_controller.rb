class PostsController < ApplicationController

  def index
    @posts = Post.all
    @word_posts = Category.find_by name: "Words"
    @vid_posts = Category.find_by name: "Vids"
    @pic_posts = Category.find_by name: "Pics"
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