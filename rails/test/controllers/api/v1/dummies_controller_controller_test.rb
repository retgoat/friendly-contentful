require 'test_helper'

class Api::V1::DummiesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_dummies_controller_index_url
    assert_response :success
  end

end
