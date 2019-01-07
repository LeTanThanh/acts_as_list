class ToDoListsController < ApplicationController
  before_action :load_to_do_list, only: %i|show sort|

  def show
    @to_do_items = @to_do_list.to_do_items
  end

  def sort
    params["to-do-item"].each.with_index(1) do |id, position|
      ToDoItem.find_by(id: id).update_attributes(position: position)
    end

    respond_to do |format|
      format.js do
        render json: {
          success: true
        }
      end
    end
  end

  private

  def load_to_do_list
    @to_do_list = ToDoList.find_by id: params[:id]
  end
end
