class OperationsController < ApplicationController
  load_and_authorize_resource

  
  def index
    @operations = Operation.all
  end

  def new
    @operation = Operation.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @operation = Operation.new(operation_params)
    @operation.user_id = current_user.id
    if @operation.save
      redirect_to categories_path, notice: 'Operation was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @operation.destroy
    redirect_to categories_path, notice: 'Operation was successfully destroyed.'
  end

  private

  def set_operation
    @operation = Operation.find(params[:id])
  end

  def operation_params
    params.require(:operation).permit(:name, :amount, :category_id)
  end
end
