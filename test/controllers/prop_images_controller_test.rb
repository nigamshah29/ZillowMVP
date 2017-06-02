require 'test_helper'

class PropImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prop_images_index_url
    assert_response :success
  end

  test "should get show" do
    get prop_images_show_url
    assert_response :success
  end

  test "should get new" do
    get prop_images_new_url
    assert_response :success
  end

  test "should get create" do
    get prop_images_create_url
    assert_response :success
  end

  test "should get edit" do
    get prop_images_edit_url
    assert_response :success
  end

  test "should get update" do
    get prop_images_update_url
    assert_response :success
  end

end
