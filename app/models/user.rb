class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :my_friends, class_name: 'Friendship', foreign_key: 'user1_id'
  has_many :user_friends, class_name: 'Friendship', foreign_key: 'user2_id'

  has_many :dogs
  has_many :messages
  has_many :park_messages
  has_many :park_reviews
  has_many :park_visits

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def all_my_friendships
    my_friends + user_friends
  end
end
