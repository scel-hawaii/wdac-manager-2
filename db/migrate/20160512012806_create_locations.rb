class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :location_id
      t.string :building_name
      t.string :address
      t.string :gps_coordinates

      t.timestamps null: false
    end
  end
end
