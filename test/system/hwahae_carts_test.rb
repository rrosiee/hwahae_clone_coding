require "application_system_test_case"

class HwahaeCartsTest < ApplicationSystemTestCase
  setup do
    @hwahae_cart = hwahae_carts(:one)
  end

  test "visiting the index" do
    visit hwahae_carts_url
    assert_selector "h1", text: "Hwahae Carts"
  end

  test "creating a Hwahae cart" do
    visit hwahae_carts_url
    click_on "New Hwahae Cart"

    fill_in "Product count", with: @hwahae_cart.product_count
    fill_in "Product", with: @hwahae_cart.product_id
    fill_in "User", with: @hwahae_cart.user_id
    click_on "Create Hwahae cart"

    assert_text "Hwahae cart was successfully created"
    click_on "Back"
  end

  test "updating a Hwahae cart" do
    visit hwahae_carts_url
    click_on "Edit", match: :first

    fill_in "Product count", with: @hwahae_cart.product_count
    fill_in "Product", with: @hwahae_cart.product_id
    fill_in "User", with: @hwahae_cart.user_id
    click_on "Update Hwahae cart"

    assert_text "Hwahae cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Hwahae cart" do
    visit hwahae_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hwahae cart was successfully destroyed"
  end
end
