json.extract! comment, :id, :name, :content, :entry_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)