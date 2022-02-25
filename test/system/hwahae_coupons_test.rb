require "application_system_test_case"

class HwahaeCouponsTest < ApplicationSystemTestCase
  setup do
    @hwahae_coupon = hwahae_coupons(:one)
  end

  test "visiting the index" do
    visit hwahae_coupons_url
    assert_selector "h1", text: "Hwahae Coupons"
  end

  test "creating a Hwahae coupon" do
    visit hwahae_coupons_url
    click_on "New Hwahae Coupon"

    fill_in "Sale persent", with: @hwahae_coupon.sale_persent
    fill_in "User", with: @hwahae_coupon.user_id
    fill_in "Valid type", with: @hwahae_coupon.valid_type
    click_on "Create Hwahae coupon"

    assert_text "Hwahae coupon was successfully created"
    click_on "Back"
  end

  test "updating a Hwahae coupon" do
    visit hwahae_coupons_url
    click_on "Edit", match: :first

    fill_in "Sale persent", with: @hwahae_coupon.sale_persent
    fill_in "User", with: @hwahae_coupon.user_id
    fill_in "Valid type", with: @hwahae_coupon.valid_type
    click_on "Update Hwahae coupon"

    assert_text "Hwahae coupon was successfully updated"
    click_on "Back"
  end

  test "destroying a Hwahae coupon" do
    visit hwahae_coupons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hwahae coupon was successfully destroyed"
  end
end
