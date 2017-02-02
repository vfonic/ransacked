class CreateProducts < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :product_properties do |t|
      t.integer :property_id

      t.timestamps null: false
    end

    add_index :product_properties, :property_id
  end
end
