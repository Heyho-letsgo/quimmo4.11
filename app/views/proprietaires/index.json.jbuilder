json.array!(@proprietaires) do |proprietaire|
  json.extract! proprietaire, :id, :agence_id, :user_id, :nom
  json.url proprietaire_url(proprietaire, format: :json)
end
