class CreateToDoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_items do |t|
      t.string :name
      t.references :to_do_list

      t.timestamps
    end
  end
end
