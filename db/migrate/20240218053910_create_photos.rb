class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.integer :collection_id

      t.timestamps
    end
  end
end
