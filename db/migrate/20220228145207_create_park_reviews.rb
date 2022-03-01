class CreateParkReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :park_reviews do |t|
      t.references :park, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
