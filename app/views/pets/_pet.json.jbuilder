json.extract! pet, :id, :nome, :idade, :created_at, :updated_at
json.url pet_url(pet, format: :json)
