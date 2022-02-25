require "application_system_test_case"

class HwahaeOrdersTest < ApplicationSystemTestCase
  setup do
    @hwahae_order = hwahae_orders(:one)
  end

  test "visiting the index" do
    visit hwahae_orders_url
    assert_selector "h1", text: "Hwahae Orders"
  end

  test "creating a Hwahae order" do
    visit hwahae_orders_url
    click_on "New Hwahae Order"

    fill_in "Order account", with: @hwahae_order.order_account
    fill_in "Order date", with: @hwahae_order.order_date
    fill_in "Order type", with: @hwahae_order.order_type
    fill_in "Product", with: @hwahae_order.product_id
    fill_in "User", with: @hwahae_order.user_id
    click_on "Create Hwahae order"

    assert_text "Hwahae order was successfully created"
    click_on "Back"
  end

  test "updating a Hwahae order" do
    visit hwahae_orders_url
    click_on "Edit", match: :first

    fill_in "Order account", with: @hwahae_order.order_account
    fill_in "Order date", with: @hwahae_order.order_date
    fill_in "Order type", with: @hwahae_order.order_type
    fill_in "Product", with: @hwahae_order.product_id
    fill_in "User", with: @hwahae_order.user_id
    click_on "Update Hwahae order"

    assert_text "Hwahae order was successfully updated"
    click_on "Back"
  end

  test "destroying a Hwahae order" do
    visit hwahae_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hwahae order was successfully destroyed"
  end
end
