class RemovePhotoFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :photo, :string
  end
end
