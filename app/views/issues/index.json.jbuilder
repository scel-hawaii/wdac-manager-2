json.array!(@issues) do |issue|
  json.extract! issue, :id, :issue_id, :title, :description, :weatherbox_id, :status, :date
  json.url issue_url(issue, format: :json)
end
