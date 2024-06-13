class AddCategoriaToSaida < ActiveRecord::Migration[7.2]
  def change
    add_reference :saidas, :categoria, null: false, foreign_key: true
  end
end
