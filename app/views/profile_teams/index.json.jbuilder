json.array!(@profile_teams) do |profile_team|
  json.extract! profile_team, :id, :name, :email, :phone, :celular, :anexo, :address_work, :image
  json.url profile_team_url(profile_team, format: :json)
end
