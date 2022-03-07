class Dog < ApplicationRecord
  belongs_to :user
  has_many :parks
  has_many :dog_traits
  has_many :traits, through: :dog_traits
  has_many_attached :photos
  has_one_attached :main_photo
  validates :name, :breed, :size, :gender, presence: true
end
