class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.references :user1, null: false
      t.references :user2, null: false
      t.string :status

      t.timestamps
    end
    # add_foreign_key :friendships, :users, column: :user1
    # add_foreign_key :friendships, :users, column: :user2
  end
end
