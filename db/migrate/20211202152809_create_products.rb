class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.integer :sale_price
      t.string :ingredient
      t.text :product_detail
      t.integer :point
      t.integer :delivery_price
      t.string :category_name
      t.string :brand_name
      t.integer :category_rank

      t.timestamps
    end
  end
end
