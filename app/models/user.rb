class User < ApplicationRecord
  # Associations
  has_many :gacha_contents, dependent: :destroy 

  # Validations
  validates :user_name, presence: true, length: { maximum: 25 }
end
