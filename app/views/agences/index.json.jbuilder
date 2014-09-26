json.array!(@agences) do |agence|
  json.extract! agence, :id, :nom
  json.url agence_url(agence, format: :json)
end
