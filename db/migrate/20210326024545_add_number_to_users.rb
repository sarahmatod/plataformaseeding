class AddNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :numer, :integer
  end
end
