class CreateHwahaeOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :hwahae_orders do |t|
      t.integer :order_account
      t.date :order_date
      t.string :order_type
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
