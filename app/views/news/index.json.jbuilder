json.array!(@news) do |news|
  json.extract! news, :id, :title, :description, :photo, :id_user, :id_category
  json.url news_url(news, format: :json)
end
