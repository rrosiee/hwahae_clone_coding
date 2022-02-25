require 'test_helper'

class HwahaeOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hwahae_order = hwahae_orders(:one)
  end

  test "should get index" do
    get hwahae_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_hwahae_order_url
    assert_response :success
  end

  test "should create hwahae_order" do
    assert_difference('HwahaeOrder.count') do
      post hwahae_orders_url, params: { hwahae_order: { order_account: @hwahae_order.order_account, order_date: @hwahae_order.order_date, order_type: @hwahae_order.order_type, product_id: @hwahae_order.product_id, user_id: @hwahae_order.user_id } }
    end

    assert_redirected_to hwahae_order_url(HwahaeOrder.last)
  end

  test "should show hwahae_order" do
    get hwahae_order_url(@hwahae_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_hwahae_order_url(@hwahae_order)
    assert_response :success
  end

  test "should update hwahae_order" do
    patch hwahae_order_url(@hwahae_order), params: { hwahae_order: { order_account: @hwahae_order.order_account, order_date: @hwahae_order.order_date, order_type: @hwahae_order.order_type, product_id: @hwahae_order.product_id, user_id: @hwahae_order.user_id } }
    assert_redirected_to hwahae_order_url(@hwahae_order)
  end

  test "should destroy hwahae_order" do
    assert_difference('HwahaeOrder.count', -1) do
      delete hwahae_order_url(@hwahae_order)
    end

    assert_redirected_to hwahae_orders_url
  end
end
