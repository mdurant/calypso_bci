json.array!(@areas) do |area|
  json.extract! area, :id, :title, :description
  json.url area_url(area, format: :json)
end
