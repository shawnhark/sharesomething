class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def word_posts
    @word_posts = Category.find_by name: "Words"
    @posts = @word_posts.posts
  end

  def pic_posts
    @pic_posts = Category.find_by name: "Pics"
    @posts = @pic_posts.posts
  end

  def vid_posts
    @vid_posts = Category.find_by name: "Vids"
    @posts = @vid_posts.posts
  end

  private
  def post_params
    params.require(:post).permit(:title, :post_url, :description, :image, :category_id)
  end



end