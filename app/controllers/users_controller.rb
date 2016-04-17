class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @information = @user.information
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
