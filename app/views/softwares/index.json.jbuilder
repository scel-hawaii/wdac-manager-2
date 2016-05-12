json.array!(@softwares) do |software|
  json.extract! software, :id, :software_id, :version, :notes
  json.url software_url(software, format: :json)
end
