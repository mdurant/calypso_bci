json.array!(@requests) do |request|
  json.extract! request, :id, :title, :area_id, :user_id, :description, :date_request, :image
  json.url request_url(request, format: :json)
end
