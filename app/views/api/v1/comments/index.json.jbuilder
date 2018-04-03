json.array! @comments do |comment|
  json.id comment.id
  json.author comment.name
  json.comment comment.content
  json.created_at comment.created_at
end
