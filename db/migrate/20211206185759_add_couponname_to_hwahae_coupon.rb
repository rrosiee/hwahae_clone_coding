class AddCouponnameToHwahaeCoupon < ActiveRecord::Migration[5.2]
  def change
    add_column :hwahae_coupons, :couponname, :string
  end
end
