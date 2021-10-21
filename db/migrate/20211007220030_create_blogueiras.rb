class CreateBlogueiras < ActiveRecord::Migration[6.0]
  def change
    create_table :blogueiras do |t|
      t.string :name
      t.integer :shoe

      t.timestamps
    end
  end
end
