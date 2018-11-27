class GachaContent < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true, length: { maximum: 25 }
  validates :lucky_day, presence: true
  validates :user_id, presence: true
end
