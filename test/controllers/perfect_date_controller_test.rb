require "test_helper"

class PerfectDateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get perfect_date_index_url
    assert_response :success
  end
end
