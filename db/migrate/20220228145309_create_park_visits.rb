class CreateParkVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :park_visits do |t|
      t.references :park, null: false, foreign_key: true
      t.date :ended_at
      t.date :started_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
