json.array!(@parts) do |part|
  json.extract! part, :id, :name, :description, :hardware_id
  json.url part_url(part, format: :json)
end
