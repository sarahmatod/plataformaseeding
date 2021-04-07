class AddDocToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :doc, :string
  end
end
