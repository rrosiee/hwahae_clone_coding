require 'test_helper'

class HwahaeCouponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hwahae_coupon = hwahae_coupons(:one)
  end

  test "should get index" do
    get hwahae_coupons_url
    assert_response :success
  end

  test "should get new" do
    get new_hwahae_coupon_url
    assert_response :success
  end

  test "should create hwahae_coupon" do
    assert_difference('HwahaeCoupon.count') do
      post hwahae_coupons_url, params: { hwahae_coupon: { sale_persent: @hwahae_coupon.sale_persent, user_id: @hwahae_coupon.user_id, valid_type: @hwahae_coupon.valid_type } }
    end

    assert_redirected_to hwahae_coupon_url(HwahaeCoupon.last)
  end

  test "should show hwahae_coupon" do
    get hwahae_coupon_url(@hwahae_coupon)
    assert_response :success
  end

  test "should get edit" do
    get edit_hwahae_coupon_url(@hwahae_coupon)
    assert_response :success
  end

  test "should update hwahae_coupon" do
    patch hwahae_coupon_url(@hwahae_coupon), params: { hwahae_coupon: { sale_persent: @hwahae_coupon.sale_persent, user_id: @hwahae_coupon.user_id, valid_type: @hwahae_coupon.valid_type } }
    assert_redirected_to hwahae_coupon_url(@hwahae_coupon)
  end

  test "should destroy hwahae_coupon" do
    assert_difference('HwahaeCoupon.count', -1) do
      delete hwahae_coupon_url(@hwahae_coupon)
    end

    assert_redirected_to hwahae_coupons_url
  end
end
