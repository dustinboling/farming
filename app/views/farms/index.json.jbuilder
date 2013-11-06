json.array!(@farms) do |farm|
  json.extract! farm, :name, :description, :user_id
  json.url farm_url(farm, format: :json)
end
