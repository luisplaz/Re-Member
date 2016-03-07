class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(id: current_user.id)
    else
      flash[:notice] = "Invalid email or password"
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end