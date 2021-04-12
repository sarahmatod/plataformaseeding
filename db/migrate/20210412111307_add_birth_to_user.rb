class AddBirthToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :birth, :date
  end
end
