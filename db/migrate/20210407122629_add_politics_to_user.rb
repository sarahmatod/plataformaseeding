class AddPoliticsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :politics, :boolean
  end
end
