# frozen_string_literal: true

json.extract! gacha_content, :id, :created_at, :updated_at
json.url gacha_content_url(gacha_content, format: :json)
