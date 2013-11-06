json.array!(@beans) do |bean|
  json.extract! bean, :first_name, :last_name, :spouse_name, :street_address, :city, :state, :zip, :farm_id
  json.url bean_url(bean, format: :json)
end
