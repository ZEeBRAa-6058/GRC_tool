require 'test_helper'

class GachaContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gacha_content = gacha_contents(:one)
  end

  test "should get index" do
    get gacha_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_gacha_content_url
    assert_response :success
  end

  test "should create gacha_content" do
    assert_difference('GachaContent.count') do
      post gacha_contents_url, params: { gacha_content: {  } }
    end

    assert_redirected_to gacha_content_url(GachaContent.last)
  end

  test "should show gacha_content" do
    get gacha_content_url(@gacha_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_gacha_content_url(@gacha_content)
    assert_response :success
  end

  test "should update gacha_content" do
    patch gacha_content_url(@gacha_content), params: { gacha_content: {  } }
    assert_redirected_to gacha_content_url(@gacha_content)
  end

  test "should destroy gacha_content" do
    assert_difference('GachaContent.count', -1) do
      delete gacha_content_url(@gacha_content)
    end

    assert_redirected_to gacha_contents_url
  end
end
