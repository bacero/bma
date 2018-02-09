require 'test_helper'

class WinnersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get winners_create_url
    assert_response :success
  end

  test "should get show" do
    get winners_show_url
    assert_response :success
  end

  test "should get index" do
    get winners_index_url
    assert_response :success
  end

end
