class ParkReview < ApplicationRecord
  belongs_to :park
  belongs_to :user

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :review, presence: true
  validates :park_id, numericality: { only_integer: true }
  validates :user_id, numericality: { only_integer: true }
end
