class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update]  #need log in to access this site
  before_action :correct_user,   only: [:edit, :update]   #Can not change the data of other user

  def new
    @comment = Comment.new
  end

  def edit
  end

  def update
  end

  def create
    @user = current_user
    @comment = @user.comments.new(params_comment)
    if @comment.save
      redirect_to Topic.find_by_id(@comment.topic_id)
    else
      render 'new'
    end
  end
  def show
    @topic = Topic.find(params[:id])
    @comment = @topic.comments.all
  end

  private

  def params_comment
    params.require(:comment).permit(:content, :topic_id)
  end
end

