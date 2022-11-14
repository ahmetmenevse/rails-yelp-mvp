class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "Restaurant must be a valid category..." }
  has_many :reviews, dependent: :destroy
end
