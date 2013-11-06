json.array!(@crops) do |crop|
  json.extract! crop, :name, :description, :farm_id
  json.url crop_url(crop, format: :json)
end
