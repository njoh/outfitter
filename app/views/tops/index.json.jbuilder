json.array!(@tops) do |top|
  json.extract! top, :id, :picture
  json.url top_url(top, format: :json)
end
