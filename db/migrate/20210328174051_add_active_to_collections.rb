class AddActiveToCollections < ActiveRecord::Migration[6.0]
  def change
    add_column :collections, :active, :boolean
  end
end
