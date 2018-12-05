# frozen_string_literal: true

require 'test_helper'

class GrcToolControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get root_path
    assert_response :success
  end

  test 'should get home' do
    get grc_tools_home_url
    assert_response :success
  end

  test 'should get release notes' do
    get grc_tools_release_notes_path
    assert_response :success
  end

  test 'should get about' do
    get grc_tools_about_url
    assert_response :success
  end
end
