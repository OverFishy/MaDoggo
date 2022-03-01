class Friendship < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  has_many :messages
end

# ARCHIVE

  # def name_of_friends
  #   friends = []
  #   filtered_friends = []
  #   current_user.all_my_friendships.each do |friendship|
  #     user1 = friendship.user1
  #     friends << user1
  #     friendship.user2
  #     friends << user2
  #   end
  #   friends.each do |friend|
  #     filtered_friends << freind if friend != current_user
  #   end
  #   filtered_friends
  # end
