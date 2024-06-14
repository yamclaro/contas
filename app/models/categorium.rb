class Categorium < ApplicationRecord
    has_many :entradas, dependent: :destroy
    has_many :saidas, dependent: :destroy
    validates :descricao, presence: true, length: { minimum: 5 }
end
