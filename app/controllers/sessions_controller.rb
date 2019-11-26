class SessionsController < ApplicationController
  def new
  end

  def create
    username = User.find_by(username: params[:username])
    if username.try(:authenticate, params[:password])
      session[:username] = username.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end
