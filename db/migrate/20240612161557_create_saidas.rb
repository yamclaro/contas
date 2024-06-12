class CreateSaidas < ActiveRecord::Migration[7.2]
  def change
    create_table :saidas do |t|
      t.float :valorPlanejado
      t.float :valorTotal
      t.float :valorTaxa
      t.datetime :vencimento
      t.string :descricao
      t.integer :status

      t.timestamps
    end
  end
end
