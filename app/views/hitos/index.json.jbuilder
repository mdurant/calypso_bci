json.array!(@hitos) do |hito|
  json.extract! hito, :id, :title, :area_id, :date_from, :date_end, :benefit, :id_user
  json.url hito_url(hito, format: :json)
end
