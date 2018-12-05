# frozen_string_literal: true

require 'application_system_test_case'

class GachaContentsTest < ApplicationSystemTestCase
  setup do
    @gacha_content = gacha_contents(:one)
  end

  test 'visiting the index' do
    visit gacha_contents_url
    assert_selector 'h1', text: 'Gacha Contents'
  end

  test 'creating a Gacha content' do
    visit gacha_contents_url
    click_on 'New Gacha Content'

    click_on 'Create Gacha content'

    assert_text 'Gacha content was successfully created'
    click_on 'Back'
  end

  test 'updating a Gacha content' do
    visit gacha_contents_url
    click_on 'Edit', match: :first

    click_on 'Update Gacha content'

    assert_text 'Gacha content was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Gacha content' do
    visit gacha_contents_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Gacha content was successfully destroyed'
  end
end
