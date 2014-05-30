class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    respond_to do |format|
      format.html { @comment = Comment.new }
      format.json {render json: @post}
    end
  end

  def search
    @post_search_results = Post.search_by_title(params[:search_term])
    @comment_search_results = Comment.search_by_title(params[:search_term])
  end

  def comment_parent
    @post_id = Comment.post_id
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.new(post_params)
    @post.creator = current_user

    if @post.save
      flash[:notice] = "You created a new post!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def vote
    @vote = Vote.new(voteable: @post, creator: current_user, vote: params[:vote])
    @vote.save

    respond_to do |format|
      format.html do
        flash[:notice] = "Your vote was counted."
        redirect_to :back
      end
      format.js
    end
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
    params.require(:post).permit(:title, :post_url, :description, :image, :category_id, :user_id)
  end
end