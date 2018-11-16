require 'test_helper'

class GrcToolControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get grc_tool_home_url
    assert_response :success
  end

  test "should get help" do
    get grc_tool_help_url
    assert_response :success
  end

  test "should get about" do
    get grc_tool_about_url
    assert_response :success
  end

end
