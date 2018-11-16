require 'test_helper'

class StaticBillboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_billboards_home_url
    assert_response :success
  end

end
