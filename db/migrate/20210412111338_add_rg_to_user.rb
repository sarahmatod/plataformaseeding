class AddRgToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rg, :integer
  end
end
