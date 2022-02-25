class CreateHwahaeCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :hwahae_carts do |t|
      t.integer :product_count
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
