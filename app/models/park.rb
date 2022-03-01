class Park < ApplicationRecord
  has_many :park_messages
  has_many :park_reviews
  has_many :park_visits

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
