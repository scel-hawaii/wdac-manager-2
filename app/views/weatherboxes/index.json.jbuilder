json.array!(@weatherboxes) do |weatherbox|
  json.extract! weatherbox, :id, :box_id, :hardware_id, :software_id, :network_id, :xbee_address, :node_type, :location_id
  json.url weatherbox_url(weatherbox, format: :json)
end
