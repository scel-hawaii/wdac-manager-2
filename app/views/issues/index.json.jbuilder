json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :description, :weatherbox_id, :status
  json.url issue_url(issue, format: :json)
end
