# frozen_string_literal: true

class GachaContent < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true, length: { maximum: 25 }
  validates :lucky_day, presence: true
  validates :user_id, presence: true

  # Enums
  enum mark: { fire: 0, water: 1, soil: 2, wind: 3, light: 4, dark: 5 }
  enum rarity: { ssr: 0, sr: 1, r: 2 }
  enum how_many: { one_shot: 0, ten_shot: 1, surprise_ticket: 2, star_regend: 3, free_ten_shot: 4, celling_change: 5, special_ticket: 6 }
end
