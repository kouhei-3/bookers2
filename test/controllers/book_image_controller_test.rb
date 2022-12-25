require "test_helper"

class BookImageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get book_image_new_url
    assert_response :success
  end

  test "should get index" do
    get book_image_index_url
    assert_response :success
  end

  test "should get show" do
    get book_image_show_url
    assert_response :success
  end

  test "should get edit" do
    get book_image_edit_url
    assert_response :success
  end
end
