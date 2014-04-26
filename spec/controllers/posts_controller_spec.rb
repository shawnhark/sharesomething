require 'spec_helper'

describe PostsController do
  describe "GET show" do
    it "sets @posts" do
      post = Fabricate(:post)
      get :show, id: post.id
      expect(assigns(:post)).to eq(post)
    end
    it "sets @categories for posts"
    it "sets @votes for posts"
  end
end