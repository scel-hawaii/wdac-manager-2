json.array!(@locations) do |location|
  json.extract! location, :id, :location_id, :building_name, :address, :gps_coordinates
  json.url location_url(location, format: :json)
end
