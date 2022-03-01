class CreateParkMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :park_messages do |t|
      t.references :park, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
