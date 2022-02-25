require 'test_helper'

class HwahaeCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hwahae_cart = hwahae_carts(:one)
  end

  test "should get index" do
    get hwahae_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_hwahae_cart_url
    assert_response :success
  end

  test "should create hwahae_cart" do
    assert_difference('HwahaeCart.count') do
      post hwahae_carts_url, params: { hwahae_cart: { product_count: @hwahae_cart.product_count, product_id: @hwahae_cart.product_id, user_id: @hwahae_cart.user_id } }
    end

    assert_redirected_to hwahae_cart_url(HwahaeCart.last)
  end

  test "should show hwahae_cart" do
    get hwahae_cart_url(@hwahae_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_hwahae_cart_url(@hwahae_cart)
    assert_response :success
  end

  test "should update hwahae_cart" do
    patch hwahae_cart_url(@hwahae_cart), params: { hwahae_cart: { product_count: @hwahae_cart.product_count, product_id: @hwahae_cart.product_id, user_id: @hwahae_cart.user_id } }
    assert_redirected_to hwahae_cart_url(@hwahae_cart)
  end

  test "should destroy hwahae_cart" do
    assert_difference('HwahaeCart.count', -1) do
      delete hwahae_cart_url(@hwahae_cart)
    end

    assert_redirected_to hwahae_carts_url
  end
end
