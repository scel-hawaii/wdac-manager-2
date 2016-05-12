json.array!(@softwares) do |software|
  json.extract! software, :id, :version, :notes
  json.url software_url(software, format: :json)
end
