class Trait < ApplicationRecord
  has_many :dog_traits
  has_many :dogs, through: :dog_traits
end
