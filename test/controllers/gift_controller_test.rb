require "test_helper"

class GiftControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gift_index_url
    assert_response :success
  end
end
