class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
    	t.column :content
      t.column :deadline

      t.references :todo_list, foreign_key: true

      t.timestamps
    end
  end
end
