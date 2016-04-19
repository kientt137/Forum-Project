class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]  #need log in to access this site
  before_action :correct_user,   only: [:edit, :update]   #Can not change the data of other user
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @info = @user.information
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.information = Information.create(phone: "0000000000")
      log_in @user
      flash[:success] = "Sign up success! Welcome to forum"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Update password success"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
