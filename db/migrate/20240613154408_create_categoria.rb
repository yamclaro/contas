class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
