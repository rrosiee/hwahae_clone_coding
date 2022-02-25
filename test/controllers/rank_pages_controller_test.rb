require 'test_helper'

class RankPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rank_page = rank_pages(:one)
  end

  test "should get index" do
    get rank_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_rank_page_url
    assert_response :success
  end

  test "should create rank_page" do
    assert_difference('RankPage.count') do
      post rank_pages_url, params: { rank_page: {  } }
    end

    assert_redirected_to rank_page_url(RankPage.last)
  end

  test "should show rank_page" do
    get rank_page_url(@rank_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_rank_page_url(@rank_page)
    assert_response :success
  end

  test "should update rank_page" do
    patch rank_page_url(@rank_page), params: { rank_page: {  } }
    assert_redirected_to rank_page_url(@rank_page)
  end

  test "should destroy rank_page" do
    assert_difference('RankPage.count', -1) do
      delete rank_page_url(@rank_page)
    end

    assert_redirected_to rank_pages_url
  end
end
