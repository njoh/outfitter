json.array!(@bottoms) do |bottom|
  json.extract! bottom, :id, :picture
  json.url bottom_url(bottom, format: :json)
end
