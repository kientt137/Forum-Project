class TopicsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit]  #need log in to access this site
  before_action :correct_user,   only: [:edit, :update]   #Can not change the data of other user

  def index
    @category = Category.find(params[:id])
    @topic = @category.topics.all
  end
  def new
    @category = Category.all
    @topic = Topic.new
  end

  def create
    @user = current_user
    @topic = @user.topics.new(params_topic)
    if @topic.save
      flash[:success] = "Create new topic success!"
      redirect_to @topic
    else
      render 'new'
    end
  end
  def show
  end

  def edit
  end

  def update

  end
  private

  def params_topic
    params.require(:topic).permit(:title, :content, :category_id)
  end
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
