require 'test_helper'

class HwahaeContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hwahae_content = hwahae_contents(:one)
  end

  test "should get index" do
    get hwahae_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_hwahae_content_url
    assert_response :success
  end

  test "should create hwahae_content" do
    assert_difference('HwahaeContent.count') do
      post hwahae_contents_url, params: { hwahae_content: { content_content: @hwahae_content.content_content, content_title: @hwahae_content.content_title, editor_name: @hwahae_content.editor_name } }
    end

    assert_redirected_to hwahae_content_url(HwahaeContent.last)
  end

  test "should show hwahae_content" do
    get hwahae_content_url(@hwahae_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_hwahae_content_url(@hwahae_content)
    assert_response :success
  end

  test "should update hwahae_content" do
    patch hwahae_content_url(@hwahae_content), params: { hwahae_content: { content_content: @hwahae_content.content_content, content_title: @hwahae_content.content_title, editor_name: @hwahae_content.editor_name } }
    assert_redirected_to hwahae_content_url(@hwahae_content)
  end

  test "should destroy hwahae_content" do
    assert_difference('HwahaeContent.count', -1) do
      delete hwahae_content_url(@hwahae_content)
    end

    assert_redirected_to hwahae_contents_url
  end
end
