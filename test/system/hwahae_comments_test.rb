require "application_system_test_case"

class HwahaeCommentsTest < ApplicationSystemTestCase
  setup do
    @hwahae_comment = hwahae_comments(:one)
  end

  test "visiting the index" do
    visit hwahae_comments_url
    assert_selector "h1", text: "Hwahae Comments"
  end

  test "creating a Hwahae comment" do
    visit hwahae_comments_url
    click_on "New Hwahae Comment"

    fill_in "Comment text", with: @hwahae_comment.comment_text
    fill_in "Date", with: @hwahae_comment.date
    fill_in "Hwahae content", with: @hwahae_comment.hwahae_content_id
    fill_in "User", with: @hwahae_comment.user_id
    click_on "Create Hwahae comment"

    assert_text "Hwahae comment was successfully created"
    click_on "Back"
  end

  test "updating a Hwahae comment" do
    visit hwahae_comments_url
    click_on "Edit", match: :first

    fill_in "Comment text", with: @hwahae_comment.comment_text
    fill_in "Date", with: @hwahae_comment.date
    fill_in "Hwahae content", with: @hwahae_comment.hwahae_content_id
    fill_in "User", with: @hwahae_comment.user_id
    click_on "Update Hwahae comment"

    assert_text "Hwahae comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Hwahae comment" do
    visit hwahae_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hwahae comment was successfully destroyed"
  end
end
