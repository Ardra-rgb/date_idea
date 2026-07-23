require "test_helper"

class ItsDateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get its_date_index_url
    assert_response :success
  end
end
