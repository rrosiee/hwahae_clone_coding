require "application_system_test_case"

class RankPagesTest < ApplicationSystemTestCase
  setup do
    @rank_page = rank_pages(:one)
  end

  test "visiting the index" do
    visit rank_pages_url
    assert_selector "h1", text: "Rank Pages"
  end

  test "creating a Rank page" do
    visit rank_pages_url
    click_on "New Rank Page"

    click_on "Create Rank page"

    assert_text "Rank page was successfully created"
    click_on "Back"
  end

  test "updating a Rank page" do
    visit rank_pages_url
    click_on "Edit", match: :first

    click_on "Update Rank page"

    assert_text "Rank page was successfully updated"
    click_on "Back"
  end

  test "destroying a Rank page" do
    visit rank_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rank page was successfully destroyed"
  end
end
