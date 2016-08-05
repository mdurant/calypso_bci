json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :fecha, :noticia, :foto, :category_id, :user_id
  json.url blog_url(blog, format: :json)
end
