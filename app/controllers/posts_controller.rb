class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    respond_to do |format|
      format.html { @comment = Comment.new }
      format.json {render json: @post}
    end
  end

  def word_posts
    @word_posts = Category.find_by name: "Words"
    @posts = @word_posts.posts
    @comments = @post.comments
  end

  def pic_posts
    @pic_posts = Category.find_by name: "Pics"
    @posts = @pic_posts.posts
    @comments = @post.comments
  end

  def vid_posts
    @vid_posts = Category.find_by name: "Vids"
    @posts = @vid_posts.posts
    @comments = @post.comments
  end

  private
  def post_params
    params.require(:post).permit(:title, :post_url, :description, :image, :category_id)
  end



end