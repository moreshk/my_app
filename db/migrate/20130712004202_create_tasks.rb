class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :user_id
      t.integer :assigned_user_id
      t.datetime :complete_by
      t.boolean :is_complete
      t.timestamps
    end
    change_column_default(:tasks, :is_complete, false)
    add_index :tasks, [:user_id, :created_at, :is_complete]
  end
end
