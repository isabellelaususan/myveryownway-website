class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.integer :product_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
