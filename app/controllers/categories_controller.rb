class CategoriesController < ApplicationController

  def index
    @category = Category.all
    @latest_topic = Topic.last(10).reverse
  end
  def show
    @category = Category.find(params[:id])
    @topic = @category.topics.all.reverse

  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Cteate success"
      redirect_to root_path
    else
      flash[:error] = "Cteate failed"
      render "new"
    end
  end


  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
