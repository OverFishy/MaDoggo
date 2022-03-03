module ApplicationHelper
  def name_of_friend(friendship)
    friendship.user1 == current_user ? friendship.user2.name : friendship.user1.name
  end
end
