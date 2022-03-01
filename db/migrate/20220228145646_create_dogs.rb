class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :gender
      t.string :breed
      t.string :size
      t.string :traits
      t.integer :age
      t.string :description

      t.timestamps
    end
  end
end
