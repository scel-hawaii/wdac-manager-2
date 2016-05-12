json.array!(@networks) do |network|
  json.extract! network, :id, :description
  json.url network_url(network, format: :json)
end
