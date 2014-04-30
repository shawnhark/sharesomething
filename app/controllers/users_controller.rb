class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if result.successful?
      flash[:success] = 'You have now registered successfully. Please log in.'
      redirect_to sign_in_path
    else
      flash[:error] = result.error_message
      render :new
    end
  end

private

  def users_params
    params.require(:user).permit(:full_name, :email, :user_name, :password, :slug, :active, :time_zone, :token, :admin, :customer_token, :premium)
  end
end