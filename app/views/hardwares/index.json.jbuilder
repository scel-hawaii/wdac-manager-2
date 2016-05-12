json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :hardware_id, :name, :notes
  json.url hardware_url(hardware, format: :json)
end
