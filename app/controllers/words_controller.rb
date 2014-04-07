class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @words = Word.new
  end

  private
  def word_params
    params.require(:word).permit!
  end


end