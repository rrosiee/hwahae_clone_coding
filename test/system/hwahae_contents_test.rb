require "application_system_test_case"

class HwahaeContentsTest < ApplicationSystemTestCase
  setup do
    @hwahae_content = hwahae_contents(:one)
  end

  test "visiting the index" do
    visit hwahae_contents_url
    assert_selector "h1", text: "Hwahae Contents"
  end

  test "creating a Hwahae content" do
    visit hwahae_contents_url
    click_on "New Hwahae Content"

    fill_in "Content content", with: @hwahae_content.content_content
    fill_in "Content title", with: @hwahae_content.content_title
    fill_in "Editor name", with: @hwahae_content.editor_name
    click_on "Create Hwahae content"

    assert_text "Hwahae content was successfully created"
    click_on "Back"
  end

  test "updating a Hwahae content" do
    visit hwahae_contents_url
    click_on "Edit", match: :first

    fill_in "Content content", with: @hwahae_content.content_content
    fill_in "Content title", with: @hwahae_content.content_title
    fill_in "Editor name", with: @hwahae_content.editor_name
    click_on "Update Hwahae content"

    assert_text "Hwahae content was successfully updated"
    click_on "Back"
  end

  test "destroying a Hwahae content" do
    visit hwahae_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hwahae content was successfully destroyed"
  end
end
