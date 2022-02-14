json.extract! cliente, :id, :nome, :email, :bairro, :rua, :veterinario_id, :pet_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
