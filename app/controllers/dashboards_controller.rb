class DashboardsController < ApplicationController
  def show
    # show the current user
    @user = current_user
    # show all dogs belong to user
    @user_dogs = current_user.dogs
    # show all friendships
    @user_friendships = current_user.all_my_friendships
  end
end
