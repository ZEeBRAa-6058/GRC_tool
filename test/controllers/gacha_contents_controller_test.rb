require 'test_helper'

class GachaContentsControllerTest < ActionDispatch::IntegrationTest
  def gacha_content
    @gacha_content ||= gacha_contents(:one)
  end

  def user
    @user ||= users(:one)
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
      post gacha_contents_url,
           params: {
             gacha_content: {
               lucky_day: gacha_content.lucky_day,
               rarity: gacha_content.rarity,
               mark: gacha_content.mark,
               name: gacha_content.name,
               how_many: gacha_content.how_many,
               user_id: user.id,
             }
            }
    end

    assert_redirected_to gacha_contents_url
  end

  test "should show gacha_content" do
    get gacha_content_url(gacha_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_gacha_content_url(gacha_content)
    assert_response :success
  end

  test "should update gacha_content" do
    patch gacha_content_url(gacha_content),
          params: {
            gacha_content: {
              lucky_day: gacha_content.lucky_day,
              rarity: gacha_content.rarity,
              mark: gacha_content.mark,
              name: gacha_content.name,
              how_many: gacha_content.how_many,
              user_id: user.id,
            }
          }
    assert_redirected_to gacha_contents_url
  end

  test "should destroy gacha_content" do
    assert_difference('GachaContent.count', -1) do
      delete gacha_content_url(gacha_content)
    end

    assert_redirected_to gacha_contents_url
  end
end
