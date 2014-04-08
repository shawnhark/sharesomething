class VidsController < ApplicationController

  def index
    @vids = Vid.all
  end

  def new
    @vids = Vid.new
  end

  private
  def word_params
    params.require(:vid).permit!
  end

end