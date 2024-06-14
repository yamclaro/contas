class Entrada < ApplicationRecord
  belongs_to :user
  belongs_to :categoria
  validates :descricao, presence: true, length: { minimum: 5 }
  validates :vencimento, presence: true
  validates :valorPlanejado, presence: true
end
