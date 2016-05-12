json.array!(@hardware_parts) do |hardware_part|
  json.extract! hardware_part, :id, :hardware_id, :part_id
  json.url hardware_part_url(hardware_part, format: :json)
end
