class TopicsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update]  #need log in to access this site
  before_action :correct_user_topic,   only: [:edit, :update]   #Can not change the data of other user

  def index
    @category = Category.find(params[:id])
    @topic = @category.topics.all
  end

  def new
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
    @topic = Topic.find(params[:id])
    @user = User.find_by_id(@topic.user_id)
    @info = @user.information
    @category = Category.find_by_id(@topic.category_id)
    @comment = @topic.comments.all
    @new_comment = Comment.new
    @user_now = current_user
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params_topic)
      flash[:success] = "Update success"
      redirect_to @topic
    else
      render 'edit'
    end
  end


  private

  def params_topic
    params.require(:topic).permit(:title, :content, :category_id)
  end
end
