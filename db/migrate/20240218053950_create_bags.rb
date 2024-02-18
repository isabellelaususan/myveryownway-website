class CreateBags < ActiveRecord::Migration[7.0]
  def change
    create_table :bags do |t|
      t.integer :type_id
      t.integer :color_id
      t.string :name
      t.integer :price
      t.string :description
      t.integer :product_id

      t.timestamps
    end
  end
end
