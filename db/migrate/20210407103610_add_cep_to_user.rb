class AddCepToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cep, :integer
  end
end
