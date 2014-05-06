class SessionsController <ApplicationController
  def new
    redirect_to home_path if current_user
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:info] = "You are now logged in."
      redirect_to home_path
    else
      flash[:error] = "Sorry, something is wrong with user name and/or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are now logged out."
    redirect_to root_path
  end

  private
  def sessions_params
    params.require(:session).permit!
  end

end