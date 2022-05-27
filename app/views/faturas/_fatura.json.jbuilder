json.extract! fatura, :id, :descricao, :image_data, :created_at, :updated_at
json.url fatura_url(fatura, format: :json)
