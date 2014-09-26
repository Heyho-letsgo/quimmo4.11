json.array!(@acquereurs) do |acquereur|
  json.extract! acquereur, :id, :nom, :user_id, :agence_id
  json.url acquereur_url(acquereur, format: :json)
end
