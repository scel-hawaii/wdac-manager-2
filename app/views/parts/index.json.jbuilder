json.array!(@parts) do |part|
  json.extract! part, :id, :name, :description
  json.url part_url(part, format: :json)
end
