require 'spec_helper'

describe UsersController do

  describe "POST create" do
    context "successful user signup" do

      it "redirects to the home page" do
#        result = double(:sign_up_result, successful?: true)
#        UserSignup.any_instance.should_receive(:sign_up).and_return(result)
        post :create, user: Fabricate.attributes_for(:user)
        response.should redirect_to home_path
      end
    end
  end
end
