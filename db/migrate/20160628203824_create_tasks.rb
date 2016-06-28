class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :execution_time
      t.string :name
      t.string :description
      t.string :task_id

      t.timestamps null: false
    end
  end
end
