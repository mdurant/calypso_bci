json.array!(@deeds) do |deed|
  json.extract! deed, :id, :title, :date_deed, :benefit, :id_user
  json.url deed_url(deed, format: :json)
end
