json.array!(@outfits) do |outfit|
  json.extract! outfit, :id, :top_id, :bottom_id, :date
  json.url outfit_url(outfit, format: :json)
end
