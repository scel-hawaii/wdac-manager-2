class CreateWeatherboxes < ActiveRecord::Migration
  def change
    create_table :weatherboxes do |t|
      t.integer :box_id
      t.integer :hardware_id
      t.integer :software_id
      t.integer :network_id
      t.string :xbee_address
      t.string :node_type
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
