json.extract! recibo, :id, :descricao, :image_data, :created_at, :updated_at
json.url recibo_url(recibo, format: :json)
