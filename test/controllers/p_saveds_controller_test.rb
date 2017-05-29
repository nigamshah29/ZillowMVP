require 'test_helper'

class PSavedsControllerTest < ActionDispatch::IntegrationTest
  test "should get save_search" do
    get p_saveds_save_search_url
    assert_response :success
  end

  test "should get favorite_property" do
    get p_saveds_favorite_property_url
    assert_response :success
  end

end
