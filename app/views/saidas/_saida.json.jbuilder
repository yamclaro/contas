json.extract! saida, :id, :valorPlanejado, :valorTotal, :valorTaxa, :vencimento, :descricao, :status, :user_id, :created_at, :updated_at
json.url saida_url(saida, format: :json)
