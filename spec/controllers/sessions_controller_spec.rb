require 'spec_helper'

describe SessionsController do
  describe "GET new" do    
    it "renders the new template" do
      get :new
      response.should render_template :new
    end
    it "redirects to the home path when the input is valid" do
      session[:user_id] = Fabricate(:user).id
      get :new
      response.should redirect_to home_path
    end
  end
  
  describe "POST create" do
    context "with valid credentials" do
      before do
        bob = Fabricate(:user)
        post :create, email: bob.email, password: bob.password
      end
      it "creates a session when the input is valid" do
        bob = Fabricate(:user)
        post :create, email: bob.email, password: bob.password
        expect(session[:user_id]).to eq(bob.id)
      end
      it "redirects to the home path when the input is valid" do
        expect(response).to redirect_to home_path
      end
      it "sets the notice" do
        expect(flash[:notice]).not_to be_blank
      end
    end

    context "with invalid credentials" do
      before do
        bob = Fabricate(:user)
        post :create, email: bob.email, password: bob.password + 'qwrqtsdjfgh'
      end  
      it "does not create a session when the input is invalid" do
        expect(session[:user_id]).to be_nil
      end
      it "redirects to sign in page" do
        expect(response).to redirect_to sign_in_path
      end
      it "sets the error message" do
        expect(flash[:error]).not_to be_nil
      end
    end
  end
  describe "GET destroy" do
    before do 
      session[:user_id] = Fabricate(:user).id
      get :destroy
    end
    it "clears the session" do
      expect(session[:user_id]).to be_nil
    end
    it "redirects to root path" do
      expect(response).to redirect_to root_path
    end
    it "sets the notice" do
      expect(flash[:notice]).not_to be_blank
    end
  end

end