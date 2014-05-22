class CommentsController < ApplicationController
  before_action :require_user
  
  def create
    @post = Post.find(params[:post_id])
    @comment= Comment.new(comments_params)
    @comment.post = @post
    @comment.creator = current_user

    if @comment.save
      flash[:success] = "Your review was created."
      redirect_to @post
    else
      flash[:error] = "We were unable to save your review. Please try again."
      @comments = @post.comments.reload
      render 'posts/show'
    end
  end

  def search
    @searchresults = Comment.search_by_title(params[:search_term])
    @comment = Comment.find(params[:id])
    @post = Comment.find(params[:post_id])
  end


  def show
    @comments = Comment.find(params[:id])
    @post = Comment.find(params[:post_id])
    respond_to do |format|
      format.html { @comment = Comment.new }
      format.json {render json: @post}
    end
  end
  
  private

  def comments_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

end
