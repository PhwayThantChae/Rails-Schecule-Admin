json.extract! speaker, :id, :name, :company, :position, :profile_url, :created_at, :updated_at
json.url speaker_url(speaker, format: :json)
