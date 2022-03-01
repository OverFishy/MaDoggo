module ApplicationHelper
  def name_of_friend(friendship)
    friendship.user1 == current_user ? friendship.user2.email : friendship.user1.email
  end
end
