json.extract! entrada, :id, :valorPlanejado, :valorTotal, :valorTaxa, :vencimento, :descricao, :status, :user_id, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)
