class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @post = Post.new
  end

  private
  def word_params
    params.require(:word).permit!
  end


end