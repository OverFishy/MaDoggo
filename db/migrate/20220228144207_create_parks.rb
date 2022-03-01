class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
