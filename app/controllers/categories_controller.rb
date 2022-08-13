class CategoriesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @categories = Category.includes(:user).all
    @operations = Operation.includes(:category).where(user_id: current_user.id)
    @total = 1
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @operations = Operation.where(category_id: @category.id)
    @total = @operations.sum(:amount)
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end