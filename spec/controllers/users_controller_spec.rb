require 'spec_helper'

describe UsersController do

  describe "POST create" do
    context "successful user signup" do

      it "redirects to the home page" do
        post :create, user: Fabricate.attributes_for(:user)
        response.should redirect_to home_path
      end
    end
  end
end
