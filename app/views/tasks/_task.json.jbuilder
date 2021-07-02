json.extract! task, :id, :date, :social_name, :posts, :created_at, :updated_at
json.url task_url(task, format: :json)
