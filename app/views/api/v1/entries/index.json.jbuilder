json.array! @entries do |entry|
  json.id entry.id
  json.title entry.title
  json.subtitle entry.subtitle
  if entry.content.length > 500
    json.body entry.content
  else
    json.body entry.content[0...499]
  end
end
