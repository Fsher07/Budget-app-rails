class OperationsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @operations = Operation.all
  end
end
