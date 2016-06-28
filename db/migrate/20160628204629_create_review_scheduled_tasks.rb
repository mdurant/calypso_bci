class CreateReviewScheduledTasks < ActiveRecord::Migration
  def change
    create_table :review_scheduled_tasks do |t|
      t.date :date
      t.string :task_id
      t.boolean :start
      t.boolean :end
      t.text :observation
      t.text :comment_to_day
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
