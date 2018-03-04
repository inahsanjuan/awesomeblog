require 'test_helper'

class VotesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get votes_controller_create_url
    assert_response :success
  end

  test "should get destroy" do
    get votes_controller_destroy_url
    assert_response :success
  end

end
