class ToDoListsController < ApplicationController
  before_action :load_to_do_list, only: %i|show|

  def show
    @to_do_items = @to_do_list.to_do_items
  end

  private

  def load_to_do_list
    @to_do_list = ToDoList.find_by id: params[:id]
  end
end
