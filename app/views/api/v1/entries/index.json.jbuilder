json.array! @entries do |entry|
  json.id entry.id
  json.title entry.title
  json.subtitle entry.subtitle
  json.body entry.content
end
