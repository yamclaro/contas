class AddUserToSaida < ActiveRecord::Migration[7.2]
  def change
    add_reference :saidas, :user, null: false, foreign_key: true
  end
end
