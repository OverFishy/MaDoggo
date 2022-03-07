class Park < ApplicationRecord
  has_one_attached :photo
  has_many :park_messages
  has_many :park_reviews
  has_many :park_visits
  has_many :users, through: :park_visits
  has_many :dogs, through: :users

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def visited_by(user)
    # if there is a park visit, return true
    !ParkVisit.find_by(user: user, park: self).nil?
  end

  def average_rating
    ParkReview.where(:park => self).average(:rating)
  end
end
