json.array!(@battery_histories) do |battery_history|
  json.extract! battery_history, :id, :battery_id, :battery_type, :initial_use, :weatherbox_id
  json.url battery_history_url(battery_history, format: :json)
end
