class UsersController < ApplicationController

  before_action :require_login, :except => [:new, :create]
  before_action :require_current_user, :only => [:edit, :update, :destroy]

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      flash[:success] = "Welcome, new user!"
      redirect_to @user
    else
      flash.now[:error] = "Something went wrong."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
