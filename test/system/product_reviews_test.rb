require "application_system_test_case"

class ProductReviewsTest < ApplicationSystemTestCase
  setup do
    @product_review = product_reviews(:one)
  end

  test "visiting the index" do
    visit product_reviews_url
    assert_selector "h1", text: "Product Reviews"
  end

  test "creating a Product review" do
    visit product_reviews_url
    click_on "New Product Review"

    fill_in "Product", with: @product_review.product_id
    fill_in "Review comment", with: @product_review.review_comment
    fill_in "User", with: @product_review.user_id
    click_on "Create Product review"

    assert_text "Product review was successfully created"
    click_on "Back"
  end

  test "updating a Product review" do
    visit product_reviews_url
    click_on "Edit", match: :first

    fill_in "Product", with: @product_review.product_id
    fill_in "Review comment", with: @product_review.review_comment
    fill_in "User", with: @product_review.user_id
    click_on "Update Product review"

    assert_text "Product review was successfully updated"
    click_on "Back"
  end

  test "destroying a Product review" do
    visit product_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product review was successfully destroyed"
  end
end
