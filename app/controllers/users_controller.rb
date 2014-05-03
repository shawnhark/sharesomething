class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      flash[:success] = 'You have now registered successfully. Please log in.'
      redirect_to home_path
    else
      flash[:error] = 'There was an error. Please check all of your information and try again.'
      render :new
    end
  end

private

  def users_params
    params.require(:user).permit(:full_name, :email, :user_name, :password_digest, :slug, :active, :time_zone, :token, :admin, :customer_token, :premium)
  end
end