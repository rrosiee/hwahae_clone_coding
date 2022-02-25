class CreateHwahaeCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :hwahae_coupons do |t|
      t.date :valid_type
      t.integer :sale_persent
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
