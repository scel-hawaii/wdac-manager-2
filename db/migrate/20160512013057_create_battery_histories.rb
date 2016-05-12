class CreateBatteryHistories < ActiveRecord::Migration
  def change
    create_table :battery_histories do |t|
      t.integer :battery_id
      t.string :type
      t.date :initial_use
      t.integer :weatherbox_id

      t.timestamps null: false
    end
  end
end
