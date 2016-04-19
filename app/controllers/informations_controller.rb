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
end
