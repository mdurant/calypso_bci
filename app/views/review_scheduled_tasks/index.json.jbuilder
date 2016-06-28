json.array!(@review_scheduled_tasks) do |review_scheduled_task|
  json.extract! review_scheduled_task, :id, :date, :task_id, :start, :end, :observation, :comment_to_day, :user_id
  json.url review_scheduled_task_url(review_scheduled_task, format: :json)
end
