require 'test_helper'

class HwahaeCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hwahae_comment = hwahae_comments(:one)
  end

  test "should get index" do
    get hwahae_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_hwahae_comment_url
    assert_response :success
  end

  test "should create hwahae_comment" do
    assert_difference('HwahaeComment.count') do
      post hwahae_comments_url, params: { hwahae_comment: { comment_text: @hwahae_comment.comment_text, date: @hwahae_comment.date, hwahae_content_id: @hwahae_comment.hwahae_content_id, user_id: @hwahae_comment.user_id } }
    end

    assert_redirected_to hwahae_comment_url(HwahaeComment.last)
  end

  test "should show hwahae_comment" do
    get hwahae_comment_url(@hwahae_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_hwahae_comment_url(@hwahae_comment)
    assert_response :success
  end

  test "should update hwahae_comment" do
    patch hwahae_comment_url(@hwahae_comment), params: { hwahae_comment: { comment_text: @hwahae_comment.comment_text, date: @hwahae_comment.date, hwahae_content_id: @hwahae_comment.hwahae_content_id, user_id: @hwahae_comment.user_id } }
    assert_redirected_to hwahae_comment_url(@hwahae_comment)
  end

  test "should destroy hwahae_comment" do
    assert_difference('HwahaeComment.count', -1) do
      delete hwahae_comment_url(@hwahae_comment)
    end

    assert_redirected_to hwahae_comments_url
  end
end
