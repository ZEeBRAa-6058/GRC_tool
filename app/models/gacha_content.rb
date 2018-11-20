class GachaContent < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true, length: { maximum: 10 }
  validates :user_id, presence: true
end
