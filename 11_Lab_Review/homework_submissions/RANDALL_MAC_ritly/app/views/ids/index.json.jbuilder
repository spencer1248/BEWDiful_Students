json.array!(@ids) do |id|
  json.extract! id, :url, :hashcode, :created, :updated
  json.url id_url(id, format: :json)
end
