json.array! @comments do |comment|
  json.id entry.id
  json.title entry.title
  json.subtitle entry.subtitle
  json.body entry.content
end
