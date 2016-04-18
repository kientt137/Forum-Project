class InformationsController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]  #need log in to access this site
  before_action :correct_user,   only: [:edit, :update]   #Can not change the data of other user

  def edit
    @user = current_user
    @info = @user.information
  end

  def update
    @user = User.find(params[:id])
    @info = @user.information
    if @info.update_attributes(info_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end


  private
  def info_params
    params.require(:information).permit(:sex, :birth, :address, :phone, :introduce, :avatar)
  end

  #Check log in status
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  #Check correct_user
  def correct_user
    @user = User.find(params[:id])
    unless current_user?(@user)
      redirect_to(root_url)
      flash[:danger] = "Access Denied"
    end
  end
end
