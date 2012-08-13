class PasswordResetsController < ApplicationController
  def new
  end
 
  def create
      @user = User.find_by_email(params[:email])
      if @user
          @user.send_password_reset
          flash[:notice] = "Password reset!"
          redirect_to root_path
      else
          flash[:notice] = "Error"
          render :action => :new
      end
  end

  def edit
      @user = User.find_by_remember_token!(params[:id])
  end

  def update
      @user = User.find_by_remember_token!(params[:id])
      @user.password = params[:user][:password]
      @user.password_confirmation = params[:user][:password_confirmation]
      if @user.save
          flash[:notice] = "Password successfully updated"
          redirect_to root_path
      else
          render :action => :edit
      end
  end
end

