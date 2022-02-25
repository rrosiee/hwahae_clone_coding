class RemoveCouponListFromCoupon < ActiveRecord::Migration[5.2]
  def change
    remove_reference :coupons, :coupon_list, foreign_key: true
  end
end
