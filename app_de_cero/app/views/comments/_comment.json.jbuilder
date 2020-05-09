json.extract! comment, :id, :stars, :body, :match_user_id, :local_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
