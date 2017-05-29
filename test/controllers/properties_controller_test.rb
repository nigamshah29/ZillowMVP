require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get properties_homepage_url
    assert_response :success
  end

  test "should get save_search" do
    get properties_save_search_url
    assert_response :success
  end

  test "should get list_property" do
    get properties_list_property_url
    assert_response :success
  end

  test "should get search" do
    get properties_search_url
    assert_response :success
  end

  test "should get favorite_property" do
    get properties_favorite_property_url
    assert_response :success
  end

  test "should get contact_seller" do
    get properties_contact_seller_url
    assert_response :success
  end

  test "should get edit_listing" do
    get properties_edit_listing_url
    assert_response :success
  end

  test "should get zestimate" do
    get properties_zestimate_url
    assert_response :success
  end

end
