json.extract! token, :id, :token_use, :social_name, :created_at, :updated_at
json.url token_url(token, format: :json)
