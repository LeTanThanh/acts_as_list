class AddPositionToToDoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :to_do_items, :position, :integer
  end
end
