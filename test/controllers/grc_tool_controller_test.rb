require 'test_helper'

class GrcToolControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get grc_tools_home_url
    assert_response :success
  end

  test "should get help" do
    get grc_tools_help_path
    assert_response :success
  end

  test "should get about" do
    get grc_tools_about_url
    assert_response :success
  end

end
