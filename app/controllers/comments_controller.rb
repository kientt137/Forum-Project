class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update]  #need log in to access this site
  before_action :correct_user_comment,   only: [:edit, :update]   #Can not change the data of other user

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @topic = Topic.find_by_id(@comment.topic_id)
    if @comment.update_attributes(params_comment)
      flash[:success] = "Update success"
      redirect_to @topic
    else
      render 'edit'
    end
  end

  def create
    @user = current_user
    @comment = @user.comments.new(params_comment)
    if @comment.save
      redirect_to Topic.find_by_id(@comment.topic_id)
    else
      render 'show'
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

